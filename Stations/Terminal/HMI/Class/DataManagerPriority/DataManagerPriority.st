//This file was generated by the LASAL2 CodeGenerator  -- 
//Please, do not edit this file (it might be overwritten by the next generator run)
//{{LSL_DECLARATION

(*!
<Class
	Name               = "DataManagerPriority"
	Revision           = "1.0"
	GUID               = "{2DBEA456-A7A4-490C-99A4-278432B4E69F}"
	RealtimeTask       = "false"
	CyclicTask         = "false"
	BackgroundTask     = "false"
	Sigmatek           = "true"
	OSInterface        = "false"
	HighPriority       = "false"
	Automatic          = "false"
	UpdateMode         = "Prescan"
	SharedCommandTable = "true"
	Objectsize         = "(410,120)"
	Comment            = "K�mmert sich um verschiedenen Buffer f�r&#13;&#10;die Priorit�ten.&#13;&#10;&#13;&#10;Manages multiple buffers for different priorities">
	<Channels>
		<Server Name="ClassSvr" GUID="{724818EE-54C8-47CB-A2C0-17B0A8E8CF40}" Visualized="false" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Client Name="DataManagerFiFo_Prio0" Required="true" Internal="true"/>
		<Client Name="DataManagerFiFo_Prio1" Required="true" Internal="true"/>
		<Client Name="DataManagerFiFo_Prio2" Required="true" Internal="true"/>
		<Client Name="DataManagerFiFo_Prio3" Required="true" Internal="true"/>
		<Client Name="DataManagerFiFo_Prio4" Required="true" Internal="true"/>
		<Client Name="DataManagerFiFo_Prio5" Required="true" Internal="true"/>
		<Client Name="DataManagerFiFo_Prio6" Required="true" Internal="true"/>
		<Client Name="DataManagerFiFo_Prio7" Required="true" Internal="true"/>
		<Client Name="DataManagerFiFo_Prio8" Required="true" Internal="true"/>
		<Client Name="DataManagerFiFo_Prio9" Required="true" Internal="true"/>
	</Channels>
	<RevDoku>
		<Owner Company="Sigmatek" Author="H�tAnt"/>
		<Dokumentation Revision="1.0" Date="2015-01-08" Author="ObeChr" Company="Sigmatek" Description="Prepared class for library"/>
		<Dokumentation Revision="0.1" Date="2014-04-17" Author="H�tAnt" Company="Sigmatek" Description="Created class"/>
	</RevDoku>
	<Network Name="DataManagerPriority">
		<!-- List of Components in this network -->
		<Components>
			<Object
				Name       = "DataManagerFiFo_Prio0"
				GUID       = "{410A7E98-F4BC-4D2A-9667-2E0A9B2445E9}"
				Class      = "DataManagerFIFO"
				Position   = "(150,240)"
				Visualized = "true">
				<Channels>
					<Server Name="ClassSvr"/>
					<Client Name="StdLib"/>
				</Channels>
			</Object>
			<Object
				Name       = "DataManagerFiFo_Prio1"
				GUID       = "{CFB038E3-BF62-448D-AEC1-D9452C565639}"
				Class      = "DataManagerFIFO"
				Position   = "(150,390)"
				Visualized = "true">
				<Channels>
					<Server Name="ClassSvr"/>
					<Client Name="StdLib"/>
				</Channels>
			</Object>
			<Object
				Name       = "DataManagerFiFo_Prio2"
				GUID       = "{AB731EA0-4DC4-40C7-8351-142249B53EB0}"
				Class      = "DataManagerFIFO"
				Position   = "(150,540)"
				Visualized = "true">
				<Channels>
					<Server Name="ClassSvr"/>
					<Client Name="StdLib"/>
				</Channels>
			</Object>
			<Object
				Name       = "DataManagerFiFo_Prio3"
				GUID       = "{D6CDA938-A7D1-4B0F-BB7F-6A708E365941}"
				Class      = "DataManagerFIFO"
				Position   = "(150,690)"
				Visualized = "true">
				<Channels>
					<Server Name="ClassSvr"/>
					<Client Name="StdLib"/>
				</Channels>
			</Object>
			<Object
				Name       = "DataManagerFiFo_Prio4"
				GUID       = "{C0BD85B8-9938-47A7-AB1D-6DB2F56379E6}"
				Class      = "DataManagerFIFO"
				Position   = "(150,840)"
				Visualized = "true">
				<Channels>
					<Server Name="ClassSvr"/>
					<Client Name="StdLib"/>
				</Channels>
			</Object>
			<Object
				Name       = "DataManagerFiFo_Prio5"
				GUID       = "{2F117BA7-2BFA-4F53-99BD-FAB8DA8FE053}"
				Class      = "DataManagerFIFO"
				Position   = "(150,990)"
				Visualized = "true">
				<Channels>
					<Server Name="ClassSvr"/>
					<Client Name="StdLib"/>
				</Channels>
			</Object>
			<Object
				Name       = "DataManagerFiFo_Prio6"
				GUID       = "{F68D520C-55B8-45BB-B849-0533851C55D2}"
				Class      = "DataManagerFIFO"
				Position   = "(150,1140)"
				Visualized = "true">
				<Channels>
					<Server Name="ClassSvr"/>
					<Client Name="StdLib"/>
				</Channels>
			</Object>
			<Object
				Name       = "DataManagerFiFo_Prio7"
				GUID       = "{DB6F91C6-E533-473B-8AB2-861A984C0FCA}"
				Class      = "DataManagerFIFO"
				Position   = "(150,1290)"
				Visualized = "true">
				<Channels>
					<Server Name="ClassSvr"/>
					<Client Name="StdLib"/>
				</Channels>
			</Object>
			<Object
				Name       = "DataManagerFiFo_Prio8"
				GUID       = "{01EE92DB-17E7-486E-9987-E8E419ADB6FF}"
				Class      = "DataManagerFIFO"
				Position   = "(150,1440)"
				Visualized = "true">
				<Channels>
					<Server Name="ClassSvr"/>
					<Client Name="StdLib"/>
				</Channels>
			</Object>
			<Object
				Name       = "DataManagerFiFo_Prio9"
				GUID       = "{B358BDC1-9AC6-489D-9907-BB5660059620}"
				Class      = "DataManagerFIFO"
				Position   = "(150,1590)"
				Visualized = "true">
				<Channels>
					<Server Name="ClassSvr"/>
					<Client Name="StdLib"/>
				</Channels>
			</Object>
		</Components>
		<Comments>
		</Comments>
		<!-- List of Connections in this network -->
		<Connections>
			<Connection Source="this.DataManagerFiFo_Prio0" Destination="DataManagerFiFo_Prio0.ClassSvr"/>
			<Connection Source="this.DataManagerFiFo_Prio1" Destination="DataManagerFiFo_Prio1.ClassSvr"/>
			<Connection Source="this.DataManagerFiFo_Prio2" Destination="DataManagerFiFo_Prio2.ClassSvr"/>
			<Connection Source="this.DataManagerFiFo_Prio3" Destination="DataManagerFiFo_Prio3.ClassSvr"/>
			<Connection Source="this.DataManagerFiFo_Prio4" Destination="DataManagerFiFo_Prio4.ClassSvr"/>
			<Connection Source="this.DataManagerFiFo_Prio5" Destination="DataManagerFiFo_Prio5.ClassSvr"/>
			<Connection Source="this.DataManagerFiFo_Prio6" Destination="DataManagerFiFo_Prio6.ClassSvr"/>
			<Connection Source="this.DataManagerFiFo_Prio7" Destination="DataManagerFiFo_Prio7.ClassSvr"/>
			<Connection Source="this.DataManagerFiFo_Prio8" Destination="DataManagerFiFo_Prio8.ClassSvr"/>
			<Connection Source="this.DataManagerFiFo_Prio9" Destination="DataManagerFiFo_Prio9.ClassSvr"/>
		</Connections>
		<!-- Headerfiles -->
		<Options>
		</Options>
	</Network>
</Class>
*)
DataManagerPriority : CLASS
	TYPE
	  t_e_CallbackState :  //! <Type Public="true" Comment="Status des Jobs mit der �bergebenen ID.&#13;&#10;&#13;&#10;State of the Job." Name="t_e_CallbackState"/>
	  (
	    _MNG_Sending,  //! <Type Comment="Wurde vom DatenMng an die CommCls �bergeben.&#13;&#10;" Name="t_e_CallbackState._MNG_Sending"/>
	    _MNG_Sended,  //! <Type Comment="Wurde von der CommCls verschickt.&#13;&#10;" Name="t_e_CallbackState._MNG_Sended"/>
	    _MNG_Received,  //! <Type Comment="Wurde vom Empf�nger angenommen.&#13;&#10;" Name="t_e_CallbackState._MNG_Received"/>
	    _MNG_NoReceiverConnected,  //! <Type Comment="Ist zwar verschickt worden , jedoch &#13;&#10;ist kein Empf�nger mit dieser ID&#13;&#10;installiert.&#13;&#10;" Name="t_e_CallbackState._MNG_NoReceiverConnected"/>
	    _MNG_JobDeletet,  //! <Type Comment="Job wurde gel�scht. ( DeleteJobs )&#13;&#10;" Name="t_e_CallbackState._MNG_JobDeletet"/>
	    _MNG_TimeOut,  //! <Type Comment="Die Timeout Zeit welche beim Job mitgegeben&#13;&#10;wurde , wurde �berschritten. Job wurde nicht gesendet.&#13;&#10;" Name="t_e_CallbackState._MNG_TimeOut"/>
	    _MNG_GlobalReceiveError  //! <Type Comment="Fehler , welcher vom User ausgel�st wurde.&#13;&#10;In der CallBackReciver Methode wurde der&#13;&#10;R�ckgabewert auf FALSE gesetzt.&#13;&#10;" Name="t_e_CallbackState._MNG_GlobalReceiveError"/>
	  )$UDINT;
	END_TYPE
  //Servers:
	ClassSvr 	: SvrChCmd_UDINT;
  //Clients:
	DataManagerFiFo_Prio0 	: CltChCmd_DataManagerFIFO;
	DataManagerFiFo_Prio1 	: CltChCmd_DataManagerFIFO;
	DataManagerFiFo_Prio2 	: CltChCmd_DataManagerFIFO;
	DataManagerFiFo_Prio3 	: CltChCmd_DataManagerFIFO;
	DataManagerFiFo_Prio4 	: CltChCmd_DataManagerFIFO;
	DataManagerFiFo_Prio5 	: CltChCmd_DataManagerFIFO;
	DataManagerFiFo_Prio6 	: CltChCmd_DataManagerFIFO;
	DataManagerFiFo_Prio7 	: CltChCmd_DataManagerFIFO;
	DataManagerFiFo_Prio8 	: CltChCmd_DataManagerFIFO;
	DataManagerFiFo_Prio9 	: CltChCmd_DataManagerFIFO;
  //Variables:
  //Functions:
				//! <Function Comment="F�gt einen Eintrag hinzu.&#13;&#10;&#13;&#10;Adds an entry." Name="Put"/>
	FUNCTION VIRTUAL GLOBAL Put
		VAR_INPUT
			pEntrieInfo 	: ^DataManagerFIFO::t_e_Entry;			//! <Variable Comment="Pointer auf die Informationen der Nachricht.&#13;&#10;&#13;&#10;Points to the information of the message." Name="Put.pEntrieInfo"/>
			ptr 	: ^void;			//! <Variable Comment="Pointer auf die Daten&#13;&#10;&#13;&#10;Points to the data" Name="Put.ptr"/>
			length 	: UDINT;			//! <Variable Comment="L�nge der Daten&#13;&#10;&#13;&#10;Length of the data" Name="Put.length"/>
		END_VAR
		VAR_OUTPUT
			retcode 	: BOOL;			//! <Variable Comment="FALSE ... konnte nicht eingetragen werden.&#13;&#10;TRUE .... wurde erfolgreich eingetragen.&#13;&#10;&#13;&#10;FALSE ... Failed to add the entry&#13;&#10;TRUE .... Entry successfully added" Name="Put.retcode"/>
		END_VAR;
				//! <Function Comment="Holt einen Eintrag aus dem Buffer&#13;&#10;&#13;&#10;Fetches an entry from the buffer" Name="Get"/>
	FUNCTION VIRTUAL GLOBAL Get
		VAR_INPUT
			pdst 	: ^void;			//! <Variable Comment="Pointer wohin die Daten kopiert werden sollen.&#13;&#10;&#13;&#10;Data will be copied to this address" Name="Get.pdst"/>
			plength 	: ^UDINT;			//! <Variable Comment="Hier wird die L�nge der kopierten Daten&#13;&#10;draufgeschrieben.&#13;&#10;&#13;&#10;Length of the copied data will be written to this address." Name="Get.plength"/>
			pEntrieInfo 	: ^DataManagerFIFO::t_e_Entry;			//! <Variable Comment="Pointer auf die Informationen der&#13;&#10;Nachricht.&#13;&#10;" Name="Get.pEntrieInfo"/>
		END_VAR
		VAR_OUTPUT
			retcode 	: BOOL;			//! <Variable Comment="FALSE .. Kein Eintrag im Buffer.&#13;&#10;TRUE ... Eintrag wurde ausgelesen.&#13;&#10;" Name="Get.retcode"/>
		END_VAR;
				//! <Function Comment="Aktualisiert die Anzahl der Eintr�ge welche&#13;&#10;in allen Buffern vorhanden sind.&#13;&#10;&#13;&#10;Refreshes the count of entries present in the buffer." Name="UpdateEntriesInBuffer"/>
	FUNCTION UpdateEntriesInBuffer;
				//! <Function Comment="L�scht alle Jobs im Buffer.&#13;&#10;&#13;&#10;Deletes all jobs from the buffer." Name="DeleteAllJobs"/>
	FUNCTION GLOBAL DeleteAllJobs;
				//! <Function Comment="L�scht einen Job aus dem Buffer.&#13;&#10;( wird nicht gel�scht , sondern wird als&#13;&#10;ung�ltig markiert )&#13;&#10;&#13;&#10;Deletes one job from the buffer (Job is not really deleted but marked as invalid)." Name="DeleteJob"/>
	FUNCTION GLOBAL DeleteJob
		VAR_INPUT
			JobId 	: DINT;			//! <Variable Comment="ID des zu l�schenden Jobs.&#13;&#10;&#13;&#10;ID of the job to delete." Name="DeleteJob.JobId"/>
		END_VAR
		VAR_OUTPUT
			retcode 	: BOOL;			//! <Variable Comment="False .. ID not found&#13;&#10;True  .. Entry marked as invalid" Name="DeleteJob.retcode"/>
		END_VAR;
  //Tables:
	FUNCTION @STD
		VAR_OUTPUT
			ret_code	: CONFSTATES;
		END_VAR;
	FUNCTION GLOBAL TAB @CT_;
END_CLASS;

#pragma using DataManagerFIFO


//}}LSL_DECLARATION


FUNCTION GLOBAL TAB DataManagerPriority::@CT_
0$UINT,
2#0100000000000000$UINT, //TY_DATAMANAGERPRIORITY
1$UINT, 0$UINT, (SIZEOF(::DataManagerPriority))$UINT, 
1$UINT, 10$UINT, 0$UINT, 
TO_UDINT(2393054465), "DataManagerPriority", //Class
TO_UDINT(0), 0, 0$UINT, 0$UINT, //Baseclass
//Servers:
(::DataManagerPriority.ClassSvr.pMeth)$UINT, _CH_CMD$UINT, 2#0000000000000000$UINT, TO_UDINT(619352855), "ClassSvr", 
//Clients:
(::DataManagerPriority.DataManagerFiFo_Prio0.pCh)$UINT, _CH_CLT_OBJ$UINT, 2#0000000000000010$UINT, TO_UDINT(1608157068), "DataManagerFiFo_Prio0", TO_UDINT(2873804345), "DataManagerFIFO", 1$UINT, 0$UINT, 
(::DataManagerPriority.DataManagerFiFo_Prio1.pCh)$UINT, _CH_CLT_OBJ$UINT, 2#0000000000000010$UINT, TO_UDINT(685618970), "DataManagerFiFo_Prio1", TO_UDINT(2873804345), "DataManagerFIFO", 1$UINT, 0$UINT, 
(::DataManagerPriority.DataManagerFiFo_Prio2.pCh)$UINT, _CH_CLT_OBJ$UINT, 2#0000000000000010$UINT, TO_UDINT(2983519904), "DataManagerFiFo_Prio2", TO_UDINT(2873804345), "DataManagerFIFO", 1$UINT, 0$UINT, 
(::DataManagerPriority.DataManagerFiFo_Prio3.pCh)$UINT, _CH_CLT_OBJ$UINT, 2#0000000000000010$UINT, TO_UDINT(3335771702), "DataManagerFiFo_Prio3", TO_UDINT(2873804345), "DataManagerFIFO", 1$UINT, 0$UINT, 
(::DataManagerPriority.DataManagerFiFo_Prio4.pCh)$UINT, _CH_CLT_OBJ$UINT, 2#0000000000000010$UINT, TO_UDINT(1488405397), "DataManagerFiFo_Prio4", TO_UDINT(2873804345), "DataManagerFIFO", 1$UINT, 0$UINT, 
(::DataManagerPriority.DataManagerFiFo_Prio5.pCh)$UINT, _CH_CLT_OBJ$UINT, 2#0000000000000010$UINT, TO_UDINT(800092931), "DataManagerFiFo_Prio5", TO_UDINT(2873804345), "DataManagerFIFO", 1$UINT, 0$UINT, 
(::DataManagerPriority.DataManagerFiFo_Prio6.pCh)$UINT, _CH_CLT_OBJ$UINT, 2#0000000000000010$UINT, TO_UDINT(3065586361), "DataManagerFiFo_Prio6", TO_UDINT(2873804345), "DataManagerFIFO", 1$UINT, 0$UINT, 
(::DataManagerPriority.DataManagerFiFo_Prio7.pCh)$UINT, _CH_CLT_OBJ$UINT, 2#0000000000000010$UINT, TO_UDINT(3250459183), "DataManagerFiFo_Prio7", TO_UDINT(2873804345), "DataManagerFIFO", 1$UINT, 0$UINT, 
(::DataManagerPriority.DataManagerFiFo_Prio8.pCh)$UINT, _CH_CLT_OBJ$UINT, 2#0000000000000010$UINT, TO_UDINT(1359024062), "DataManagerFiFo_Prio8", TO_UDINT(2873804345), "DataManagerFIFO", 1$UINT, 0$UINT, 
(::DataManagerPriority.DataManagerFiFo_Prio9.pCh)$UINT, _CH_CLT_OBJ$UINT, 2#0000000000000010$UINT, TO_UDINT(637943592), "DataManagerFiFo_Prio9", TO_UDINT(2873804345), "DataManagerFIFO", 1$UINT, 0$UINT, 
END_FUNCTION


#define USER_CNT_DataManagerPriority 2

TYPE
	_LSL_STD_VMETH	: STRUCT
			CmdTable	: CMDMETH;
			UserFcts	: ARRAY[0..USER_CNT_DataManagerPriority] OF ^Void;
	END_STRUCT;
END_TYPE

FUNCTION DataManagerPriority::@STD
	VAR_OUTPUT
		ret_code	: CONFSTATES;
	END_VAR
	VAR
		vmt	: _LSL_STD_VMETH;
	END_VAR

	//Command Methods
	InitCmdTable (nCmd := nSTDCMD + USER_CNT_DataManagerPriority, pCmd := #vmt.CmdTable);
#pragma warning (disable : 74)
	vmt.UserFcts[0]		:= #Put();

#pragma warning (default : 74)
#pragma warning (disable : 74)
	vmt.UserFcts[1]		:= #Get();

#pragma warning (default : 74)
	ClassSvr.pMeth		:= StoreCmd (pCmd := #vmt.CmdTable, SHARED);

	IF ClassSvr.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;

END_FUNCTION

//{{LSL_IMPLEMENTATION
// Prototype f�r Callback Methode.
FUNCTION GLOBAL UserCallbackJobState VAR_INPUT pthis : pvoid; JobID : dint; JobState : DataManagerPriority::t_e_CallbackState; END_VAR;

FUNCTION VIRTUAL GLOBAL DataManagerPriority::Put
	VAR_INPUT
		pEntrieInfo 	: ^DataManagerFIFO::t_e_Entry;
		ptr 	: ^void;
		length 	: UDINT;
	END_VAR
	VAR_OUTPUT
		retcode 	: BOOL;
	END_VAR

  
  // Job in den entsprechenden Buffer eintragen. ( Priorit�t )
  case pEntrieInfo^.Header.Prio of
  
    0 : retcode := DataManagerFiFo_Prio0.Put(pEntrieInfo, ptr, length);
    1 : retcode := DataManagerFiFo_Prio1.Put(pEntrieInfo, ptr, length);
    2 : retcode := DataManagerFiFo_Prio2.Put(pEntrieInfo, ptr, length);
    3 : retcode := DataManagerFiFo_Prio3.Put(pEntrieInfo, ptr, length);
    4 : retcode := DataManagerFiFo_Prio4.Put(pEntrieInfo, ptr, length);
    5 : retcode := DataManagerFiFo_Prio5.Put(pEntrieInfo, ptr, length);
    6 : retcode := DataManagerFiFo_Prio6.Put(pEntrieInfo, ptr, length);
    7 : retcode := DataManagerFiFo_Prio7.Put(pEntrieInfo, ptr, length);
    8 : retcode := DataManagerFiFo_Prio8.Put(pEntrieInfo, ptr, length);
    9 : retcode := DataManagerFiFo_Prio9.Put(pEntrieInfo, ptr, length);
  
  end_case;
  
  // Anzahl der Eintr�ge aktualieren.
  UpdateEntriesInBuffer();

  
end_function

FUNCTION VIRTUAL GLOBAL DataManagerPriority::Get
	VAR_INPUT
		pdst 	: ^void;
		plength 	: ^UDINT;
		pEntrieInfo 	: ^DataManagerFIFO::t_e_Entry;
	END_VAR
	VAR_OUTPUT
		retcode 	: BOOL;
	END_VAR
  
  
  // Job aus dem Buffer holen.
  // Priorit�t 0 ist die h�chste . Ist kein Eintrag vorhanden , kommt Prio 1 usw,..
  
  
  
  retcode := DataManagerFiFo_Prio0.Get(pdst, plength, pEntrieInfo);
  // es wurd ein g�ltiger Job ausgelesen.
  if retcode = TRUE then
    // Anzahl der Eintr�ge aktualieren.
    UpdateEntriesInBuffer();
    // Abbruch der Suche, da Job gefunden wurde.
    return;
  end_if;
  
  retcode := DataManagerFiFo_Prio1.Get(pdst, plength, pEntrieInfo);
  if retcode = TRUE then
    UpdateEntriesInBuffer();
    return;
  end_if;
  
  retcode := DataManagerFiFo_Prio2.Get(pdst, plength, pEntrieInfo);
  if retcode = TRUE then
    UpdateEntriesInBuffer();
    return;
  end_if;
  
  retcode := DataManagerFiFo_Prio3.Get(pdst, plength, pEntrieInfo);
  if retcode = TRUE then
    UpdateEntriesInBuffer();
    return;
  end_if;
  
  retcode := DataManagerFiFo_Prio4.Get(pdst, plength, pEntrieInfo);
  if retcode = TRUE then
    UpdateEntriesInBuffer();
    return;
  end_if;
  
  retcode := DataManagerFiFo_Prio5.Get(pdst, plength, pEntrieInfo);
  if retcode = TRUE then
    UpdateEntriesInBuffer();
    return;
  end_if;
  
  retcode := DataManagerFiFo_Prio6.Get(pdst, plength, pEntrieInfo);
  if retcode = TRUE then
    UpdateEntriesInBuffer();
    return;
  end_if;
  
  retcode := DataManagerFiFo_Prio7.Get(pdst, plength, pEntrieInfo);
  if retcode = TRUE then
    UpdateEntriesInBuffer();
    return;
  end_if;
  
  retcode := DataManagerFiFo_Prio8.Get(pdst, plength, pEntrieInfo);
  if retcode = TRUE then
    UpdateEntriesInBuffer();
    return;
  end_if;
  
  retcode := DataManagerFiFo_Prio9.Get(pdst, plength, pEntrieInfo);
  if retcode = TRUE then
    UpdateEntriesInBuffer();
    return;
  end_if;
  

              
    
end_function

FUNCTION DataManagerPriority::UpdateEntriesInBuffer

  // damit man au�en sieht , wie viele Eintr�ge in allen Buffer sind.
  
  ClassSvr := DataManagerFiFo_Prio0.ClassSvr +
              DataManagerFiFo_Prio1.ClassSvr +
              DataManagerFiFo_Prio2.ClassSvr +
              DataManagerFiFo_Prio3.ClassSvr +
              DataManagerFiFo_Prio4.ClassSvr +
              DataManagerFiFo_Prio5.ClassSvr +
              DataManagerFiFo_Prio6.ClassSvr +
              DataManagerFiFo_Prio7.ClassSvr +
              DataManagerFiFo_Prio8.ClassSvr +
              DataManagerFiFo_Prio9.ClassSvr ;

END_FUNCTION


FUNCTION GLOBAL DataManagerPriority::DeleteAllJobs
VAR
	x             : dint;
	Length 	    : UDINT;
	EntrieInfo 	: DataManagerFIFO::t_e_Entry;
  retcode     : dint;
END_VAR

  
  // f�r alle 10 Priorit�ten durchlaufen.
  for x:=0 to 9 do
  
    retcode := TRUE;
    
    // nur solange , bis kein Eintrag mehr im Buffer ist.
    while retcode = TRUE do
    
      // Auswahl des Buffers
      case x of
      
        0 : retcode := DataManagerFiFo_Prio0.Get(pdst:=NIL, plength:=#Length, pEntrieInfo:=#EntrieInfo);
        1 : retcode := DataManagerFiFo_Prio1.Get(pdst:=NIL, plength:=#Length, pEntrieInfo:=#EntrieInfo);
        2 : retcode := DataManagerFiFo_Prio2.Get(pdst:=NIL, plength:=#Length, pEntrieInfo:=#EntrieInfo);
        3 : retcode := DataManagerFiFo_Prio3.Get(pdst:=NIL, plength:=#Length, pEntrieInfo:=#EntrieInfo);
        4 : retcode := DataManagerFiFo_Prio4.Get(pdst:=NIL, plength:=#Length, pEntrieInfo:=#EntrieInfo);
        5 : retcode := DataManagerFiFo_Prio5.Get(pdst:=NIL, plength:=#Length, pEntrieInfo:=#EntrieInfo);
        6 : retcode := DataManagerFiFo_Prio6.Get(pdst:=NIL, plength:=#Length, pEntrieInfo:=#EntrieInfo);
        7 : retcode := DataManagerFiFo_Prio7.Get(pdst:=NIL, plength:=#Length, pEntrieInfo:=#EntrieInfo);
        8 : retcode := DataManagerFiFo_Prio8.Get(pdst:=NIL, plength:=#Length, pEntrieInfo:=#EntrieInfo);
        9 : retcode := DataManagerFiFo_Prio9.Get(pdst:=NIL, plength:=#Length, pEntrieInfo:=#EntrieInfo);
            
      end_case;
      
      // Sender informieren , das sein Job gel�scht wurde.
      if retcode = TRUE then
        EntrieInfo.Info.pCallback$UserCallbackJobState(EntrieInfo.Info.pthis, EntrieInfo.Header.JobID ,_MNG_JobDeletet); 
      end_if;
      
      // Anzahl der Eintr�ge aktualieren.
      UpdateEntriesInBuffer();
      
    end_while;
  
  end_for;



  

END_FUNCTION


FUNCTION GLOBAL DataManagerPriority::DeleteJob
	VAR_INPUT
		JobId 	: DINT;
	END_VAR
	VAR_OUTPUT
		retcode 	: BOOL;
	END_VAR
  VAR
	x             : dint;
	EntrieInfo 	: DataManagerFIFO::t_e_Entry;
END_VAR

  retcode := FALSE;
  
  // f�r alle 10 Priorit�ten durchlaufen.
  for x:=0 to 9 do
    
      // Auswahl des Buffers
      case x of
      
        0 : retcode := DataManagerFiFo_Prio0.DeleteJob(JobId,#EntrieInfo) ;
        1 : retcode := DataManagerFiFo_Prio1.DeleteJob(JobId,#EntrieInfo) ;
        2 : retcode := DataManagerFiFo_Prio2.DeleteJob(JobId,#EntrieInfo) ;
        3 : retcode := DataManagerFiFo_Prio3.DeleteJob(JobId,#EntrieInfo) ;
        4 : retcode := DataManagerFiFo_Prio4.DeleteJob(JobId,#EntrieInfo) ;
        5 : retcode := DataManagerFiFo_Prio5.DeleteJob(JobId,#EntrieInfo) ;
        6 : retcode := DataManagerFiFo_Prio6.DeleteJob(JobId,#EntrieInfo) ;
        7 : retcode := DataManagerFiFo_Prio7.DeleteJob(JobId,#EntrieInfo) ;
        8 : retcode := DataManagerFiFo_Prio8.DeleteJob(JobId,#EntrieInfo) ;
        9 : retcode := DataManagerFiFo_Prio9.DeleteJob(JobId,#EntrieInfo) ;
             
      end_case;
      
      // Sender informieren , das sein Job gel�scht wurde.
      if retcode = TRUE then
        EntrieInfo.Info.pCallback$UserCallbackJobState(EntrieInfo.Info.pthis, EntrieInfo.Header.JobID ,_MNG_JobDeletet); 
        exit;
      end_if;
  
  end_for;

END_FUNCTION