//This file was generated by the LASAL2 CodeGenerator  -- 
//Please, do not edit this file (it might be overwritten by the next generator run)
//{{LSL_DECLARATION
#include "..\..\Class\DataManager\DataManager.h"

(*!
<Class
	Name               = "DataManager"
	Revision           = "1.0"
	GUID               = "{82EA618D-7DDE-40A7-8F95-05DF030231F7}"
	RealtimeTask       = "false"
	CyclicTask         = "false"
	BackgroundTask     = "false"
	Sigmatek           = "true"
	OSInterface        = "false"
	HighPriority       = "false"
	Automatic          = "false"
	UpdateMode         = "Prescan"
	SharedCommandTable = "true"
	Objectsize         = "(660,300)"
	Comment            = "Daten Manager : kann verwendet werden , um&#13;&#10;Jobs mit einer Priorisierung von 0..9 abzusetzen.&#13;&#10;&#13;&#10;Diese k�nnen dann entspechend der Priorisierung &#13;&#10;wieder ausgelesen werden.&#13;&#10;&#13;&#10;Die Daten des Jobs werden in der Klasse&#13;&#10;gehalten , bis der Job erledigt ist.&#13;&#10;&#13;&#10;&#13;&#10;Is used to transmit jobs with a priority of 0..9. The Jobs can then be read out again, respecting the priority.&#13;&#10;&#13;&#10;Data of a specific job is kept in the class until a job is finished.">
	<Channels>
		<Server Name="AcceptOfflineJobs" GUID="{7323B74A-F997-4893-8685-EADC3116D18A}" Visualized="false" Initialize="true" DefValue="1" WriteProtected="false" Retentive="false" Comment="0..es werden keine Jobs angenommen , wenn die Kommunikation offline ist.&#13;&#10;1..Jobs werden auch angenommen , wenn die Kommunikation offline ist.&#13;&#10;&#13;&#10;0..No jobs are accepted if the communication is offline.&#13;&#10;1..Jobs are also accepted if the communication is offline."/>
		<Server Name="ClassSvr" GUID="{D5B6EFE3-8FBF-4D15-AEB7-C5D8229BB22E}" Visualized="false" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="DeleteJobs" GUID="{F94A408B-914D-49EC-AEDA-338FFCCBE8E0}" Visualized="false" Initialize="false" WriteProtected="false" Retentive="false" Comment="ein Write l�scht alle Eintr�ge der&#13;&#10;Buffer&#13;&#10;&#13;&#10;Write erases every entry of every buffer"/>
		<Server Name="NoEntries" GUID="{355E18CD-1DD6-4326-8F94-723F7607BBC8}" Visualized="false" Initialize="false" WriteProtected="true" Retentive="false" Comment="Anzahl aller Jobs , welche noch nicht&#13;&#10;bearbeitet wurden.&#13;&#10;&#13;&#10;Count of jobs which have not been processed so far."/>
		<Client Name="coTCPCommunication" Required="true" Internal="false" Comment="Verbindung zur Kommunikations Klasse.&#13;&#10;&#13;&#10;Objekt Kanal: TCPCommunication&#13;&#10;&#13;&#10;Wird verwendet , um den Status der&#13;&#10;Onlineverbindung zu erhalten.&#13;&#10;&#13;&#10;&#13;&#10;Connection to the communication class, is used to get the state of the communication."/>
		<Client Name="DataManagerPriority" Required="true" Internal="true"/>
		<Client Name="DataMngGetTaskHandle1" Required="true" Internal="true"/>
	</Channels>
	<Dependencies>
		<Files>
			<File Path=".\Class\DataManager\DataManager.h" Include="true"/>
		</Files>
	</Dependencies>
	<RevDoku>
		<Owner Company="Sigmatek" Author="H�tAnt"/>
		<Dokumentation Revision="1.0" Date="2015-01-08" Author="ObeChr" Company="Sigmatek" Description="Prepared class for library"/>
		<Dokumentation Revision="0.1" Date="2014-04-17" Author="H�tAnt" Company="Sigmatek" Description="Created class"/>
	</RevDoku>
	<Network Name="DataManager">
		<!-- List of Components in this network -->
		<Components>
			<Object
				Name       = "DataManagerPriority"
				GUID       = "{F66E14FC-FECF-46E8-BBE1-25C0080190DD}"
				Class      = "DataManagerPriority"
				Position   = "(240,180)"
				Visualized = "false">
				<Channels>
					<Server Name="ClassSvr"/>
				</Channels>
			</Object>
			<Object
				Name           = "DataMngGetTaskHandle1"
				GUID           = "{97BB1F6B-F2E8-400B-B2D4-711F9B36FFFE}"
				Class          = "GetTaskHandle"
				Position       = "(240,330)"
				Visualized     = "false"
				RealTime       = "1000 ms"
				CyclicTime     = "1000 ms"
				BackgroundTime = "1000 ms">
				<Channels>
					<Server Name="ClassSvr"/>
				</Channels>
			</Object>
		</Components>
		<Comments>
		</Comments>
		<!-- List of Connections in this network -->
		<Connections>
			<Connection Source="this.NoEntries" Destination="DataManagerPriority.ClassSvr" Vertices="(838,270),(666,270),"/>
			<Connection Source="this.DataManagerPriority" Destination="DataManagerPriority.ClassSvr"/>
			<Connection Source="this.DataMngGetTaskHandle1" Destination="DataMngGetTaskHandle1.ClassSvr"/>
		</Connections>
		<!-- Headerfiles -->
		<Options>
		</Options>
	</Network>
</Class>
*)
DataManager : CLASS
	TYPE
#pragma pack(push, 1)
	  t_s_ReceiverEntry : STRUCT  //! <Type Comment="Informationen �ber einen Reciver." Name="t_s_ReceiverEntry"/>
	    dID : DINT;  //! <Type Comment="ID des angemeldetem Recivers.&#13;&#10;" Name="t_s_ReceiverEntry.dID"/>
	    pCallBackFunct : pVoid;  //! <Type Comment="Pointer auf die CallBack Funktion &#13;&#10;des Recivers.&#13;&#10;" Name="t_s_ReceiverEntry.pCallBackFunct"/>
	    pCallBackThis : pVoid;  //! <Type Comment="THIS Pointer des Recivers.&#13;&#10;" Name="t_s_ReceiverEntry.pCallBackThis"/>
	  END_STRUCT;
#pragma pack(pop)
#pragma pack(push, 1)
	  t_s_ReceiverList : STRUCT  //! <Type Comment="Liste mit allen verbundenen Recivern.&#13;&#10;" Name="t_s_ReceiverList"/>
	    dCountConnectedReveicer : DINT;  //! <Type Comment="Anzahl der angemeldeten Recivern.&#13;&#10;" Name="t_s_ReceiverList.dCountConnectedReveicer"/>
	    aReceiver : ARRAY [0..DataManager_MaxReceiver-1] OF t_s_ReceiverEntry;  //! <Type Comment="Liste mit allen Recivern.&#13;&#10;" Name="t_s_ReceiverList.aReceiver"/>
	  END_STRUCT;
#pragma pack(pop)
	END_TYPE
  //Servers:
	ClassSvr 	: SvrChCmd_DINT;
	NoEntries 	: SvrCh_UDINT;
	DeleteJobs 	: SvrCh_DINT;
	AcceptOfflineJobs 	: SvrCh_DINT;
  //Clients:
	coTCPCommunication 	: CltChCmd_TCPCommunication;
	DataMngGetTaskHandle1 	: CltChCmd_GetTaskHandle;
	DataManagerPriority 	: CltChCmd_DataManagerPriority;
  //Variables:
		sConnectedReciver 	: t_s_ReceiverList;			//! <Variable Comment="Liste mit allen angemeldeten Recivern&#13;&#10;&#13;&#10;List of all connected receivers." Name="sConnectedReciver"/>
		dJobIDCounter 	: DINT;			//! <Variable Comment="Generiert bei jedem Job eine&#13;&#10;eigene JobID.&#13;&#10;&#13;&#10;Generated ID for every job." Name="dJobIDCounter"/>
  //Functions:
				//! <Function Comment="Wird verwendet , um ein Empfangsobjekt zu installieren.&#13;&#10;&#13;&#10;Is used to install a receiver object." Name="ConnectReciver"/>
	FUNCTION GLOBAL ConnectReciver
		VAR_INPUT
			udID 	: DINT;			//! <Variable Comment="ID , f�r welche der Empf�nger installiert werden&#13;&#10;soll.&#13;&#10;&#13;&#10;ID of the receiver to be installed." Name="ConnectReciver.udID"/>
			pThis 	: pVoid;			//! <Variable Comment="This Pointer des eigenen Objekts. Wird&#13;&#10;f�r den CallBack ben�tigt.&#13;&#10;&#13;&#10;This-Pointer of the receiver object. Is used to call the callback method." Name="ConnectReciver.pThis"/>
			pCallback 	: pVoid;			//! <Variable Comment="Funktionspointer der CallBack Methode.&#13;&#10;&#13;&#10;Pointer of the callback method." Name="ConnectReciver.pCallback"/>
		END_VAR
		VAR_OUTPUT
			dRetcode 	: DINT;			//! <Variable Comment="1 .. Empf�nger installiert.&#13;&#10;&#13;&#10;-1 .. Maximale Anzahl erreicht.&#13;&#10;-2 .. ID wurde bereits installiert.&#13;&#10;&#13;&#10;&#13;&#10;&#13;&#10;1 .. Receiver successfully installed&#13;&#10;&#13;&#10;-1 .. Maximum amount of reiceivers installed&#13;&#10;-2 .. ID already in use." Name="ConnectReciver.dRetcode"/>
		END_VAR;
				//! <Function Comment="Wird verwendet um Daten an einen Empf�nger zu schicken.&#13;&#10;( Daten werden entweder �ber TCP geschickt oder&#13;&#10;intern weitergeleitet )&#13;&#10;&#13;&#10;&#13;&#10;Is used to send data to a receiver (Data is either sent via TCP or forwarded internally)." Name="SetData"/>
	FUNCTION GLOBAL SetData
		VAR_INPUT
			dDestinationID 	: DINT;			//! <Variable Comment="ID an welche die Daten geschickt werden sollen.&#13;&#10;&#13;&#10;ID of the receiver for which the data is intended for." Name="SetData.dDestinationID"/>
			dSourceID 	: DINT;			//! <Variable Comment="Eigene ID , damit der Empf�nger mitbekommt ,&#13;&#10;von wem die Nachricht kommt.&#13;&#10;&#13;&#10;Own ID, for the receiver to know where the data is coming from." Name="SetData.dSourceID"/>
			pData 	: pVoid;			//! <Variable Comment="Pointer auf die Daten , welche geschickt&#13;&#10;werden sollen.&#13;&#10;&#13;&#10;Points to the data to be sent." Name="SetData.pData"/>
			udSize 	: UDINT;			//! <Variable Comment="Gr��e der Daten die zu schicken sind.&#13;&#10;&#13;&#10;Size of the data to be sent." Name="SetData.udSize"/>
			pThis 	: pVoid;			//! <Variable Comment="Eigener THIS-Pointer , damit der &#13;&#10;Status �ber einen CallBack aufgerufen&#13;&#10;werden kann.&#13;&#10;&#13;&#10;This pointer of the class that calles the SetData. Is used for a callback on state change." Name="SetData.pThis"/>
			pCallBack 	: pVoid;			//! <Variable Comment="Pointer auf die CallBack Methode , welche&#13;&#10;bei Statuswechseln aufgerufen wird.&#13;&#10;&#13;&#10;Points to a callback method which is called on state changes." Name="SetData.pCallBack"/>
			udTimeOut 	: UDINT;			//! <Variable Comment="Timeout , nach welcher die Nachricht sp�testens&#13;&#10;rausgegangen sein mu�.&#13;&#10;&#13;&#10;Timeout for the sending process." Name="SetData.udTimeOut"/>
			dPrio 	: DINT;			//! <Variable Comment="Priority of the job." Name="SetData.dPrio"/>
		END_VAR
		VAR_OUTPUT
			dJobID 	: DINT;			//! <Variable Comment="Job ID" Name="SetData.dJobID"/>
		END_VAR;
				//! <Function Comment="Wird von der CommClas aufgerufen , wenn&#13;&#10;eine Nachricht empfangen wurde.&#13;&#10;&#13;&#10;Die Methode sucht den richtigen Empf�nger&#13;&#10;raus und ruft anschlie�end den &#13;&#10;CallBack des Recivers auf.&#13;&#10;&#13;&#10;&#13;&#10;&#13;&#10;Is called when a message is received.&#13;&#10;&#13;&#10;This Method determines the receiver and calls the corresponding callback method." Name="RecivedData"/>
	FUNCTION GLOBAL RecivedData
		VAR_INPUT
			dDestinationID 	: DINT;
			dSourceID 	: DINT;
			udSize 	: UDINT;			//! <Variable Comment="Gr��e der Daten&#13;&#10;&#13;&#10;Size of the Data" Name="RecivedData.udSize"/>
			pData 	: pVoid;			//! <Variable Comment="Pointer auf die Daten.&#13;&#10;&#13;&#10;Points to the data to be sent." Name="RecivedData.pData"/>
		END_VAR
		VAR_OUTPUT
			dRetcode 	: DINT;
		END_VAR;
				//! <Function Comment="L�scht alle Jobs im Buffer.&#13;&#10;&#13;&#10;Deletes all jobs from the buffer." Name="DeleteAllJobs"/>
	FUNCTION GLOBAL DeleteAllJobs;
				//! <Function Comment="Durchsucht alle angemeldeten Reciver&#13;&#10;nach der �bergebenen ID und liefert&#13;&#10;den Index dieser ID zur�ck.&#13;&#10;&#13;&#10;Determines an index for a given receiver ID." Name="GetIndexOfReciver"/>
	FUNCTION GetIndexOfReciver
		VAR_INPUT
			DestinationID 	: DINT;			//! <Variable Comment="zu suchende ID" Name="GetIndexOfReciver.DestinationID"/>
		END_VAR
		VAR_OUTPUT
			dRetcode 	: DINT;			//! <Variable Comment="&gt;= 0 ... Index of Reciver&#13;&#10;-1   ... Reciver nicht eingetragen.&#13;&#10;" Name="GetIndexOfReciver.dRetcode"/>
		END_VAR;
				//! <Function Comment="Wird aufgerufen , um sich&#13;&#10;den n�chsten Job zu holen.&#13;&#10;&#13;&#10;&#13;&#10;Is called to fetch the next job from the buffer." Name="GetNextJob"/>
	FUNCTION GLOBAL GetNextJob
		VAR_INPUT
			pEntrieInfo 	: ^DataManagerFIFO::t_e_Entry;			//! <Variable Comment="Pointer auf die Informationen der&#13;&#10;Nachricht.&#13;&#10;&#13;&#10;Points to information about the message." Name="GetNextJob.pEntrieInfo"/>
			pData 	: pVoid;			//! <Variable Comment="Pointer auf die User Daten.&#13;&#10;&#13;&#10;Points to the userdata." Name="GetNextJob.pData"/>
			pLength 	: ^UDINT;			//! <Variable Comment="L�nge der User Daten.&#13;&#10;&#13;&#10;Length of the userdata." Name="GetNextJob.pLength"/>
		END_VAR
		VAR_OUTPUT
			dRetcode 	: DINT;			//! <Variable Comment="False .. Kein Job vorhanden.&#13;&#10;True  .. Job wurde ausgelesen.&#13;&#10;&#13;&#10;&#13;&#10;False .. No job available.&#13;&#10;True  .. Job has successfully been gathered." Name="GetNextJob.dRetcode"/>
		END_VAR;
				//! <Function Comment="L�scht einen Job aus dem Buffer.&#13;&#10;( wird nicht gel�scht , sondern wird als&#13;&#10;ung�ltig markiert )&#13;&#10;&#13;&#10;&#13;&#10;Deletes a job from the buffer. (job is not deleted but marked as invalid)." Name="DeleteJob"/>
	FUNCTION GLOBAL DeleteJob
		VAR_INPUT
			dJobId 	: DINT;			//! <Variable Comment="ID des zu l�schenden Jobs.&#13;&#10;&#13;&#10;ID of the job to be deleted." Name="DeleteJob.dJobId"/>
		END_VAR
		VAR_OUTPUT
			bRetcode 	: BOOL;			//! <Variable Comment="False .. ID not found&#13;&#10;True  .. Entry marked as invalid" Name="DeleteJob.bRetcode"/>
		END_VAR;
				//! <Function Comment="Hier kann der Status der Verbindung&#13;&#10;ausgelesen werden.&#13;&#10;&#13;&#10;Can be used to determine the state of the connection." Name="GetOnlineState"/>
	FUNCTION GLOBAL GetOnlineState
		VAR_OUTPUT
			bOnline 	: BOOL;			//! <Variable Comment="FALSE..offline&#13;&#10;TRUE ..online" Name="GetOnlineState.bOnline"/>
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL NoEntries::Read
		VAR_OUTPUT
			output (EAX) 	: UDINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL DeleteJobs::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
  //Tables:
	FUNCTION @STD
		VAR_OUTPUT
			ret_code	: CONFSTATES;
		END_VAR;
	FUNCTION GLOBAL TAB @CT_;
END_CLASS;

#pragma using DataManagerPriority
#pragma using GetTaskHandle
#pragma usingLtd TCPCommunication


//}}LSL_DECLARATION


FUNCTION GLOBAL TAB DataManager::@CT_
0$UINT,
2#0100000000000000$UINT, //TY_DATAMANAGER
1$UINT, 0$UINT, (SIZEOF(::DataManager))$UINT, 
4$UINT, 3$UINT, 0$UINT, 
TO_UDINT(4008337867), "DataManager", //Class
TO_UDINT(0), 0, 0$UINT, 0$UINT, //Baseclass
//Servers:
(::DataManager.ClassSvr.pMeth)$UINT, _CH_CMD$UINT, 2#0000000000000000$UINT, TO_UDINT(619352855), "ClassSvr", 
(::DataManager.NoEntries.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(2402651867), "NoEntries", 
(::DataManager.DeleteJobs.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(814859821), "DeleteJobs", 
(::DataManager.AcceptOfflineJobs.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(4075562907), "AcceptOfflineJobs", 
//Clients:
(::DataManager.coTCPCommunication.pCh)$UINT, _CH_CLT_OBJ$UINT, 2#0000000000000010$UINT, TO_UDINT(2628164504), "coTCPCommunication", TO_UDINT(3704218787), "TCPCommunication", 1$UINT, 14$UINT, 
(::DataManager.DataMngGetTaskHandle1.pCh)$UINT, _CH_CLT_OBJ$UINT, 2#0000000000000010$UINT, TO_UDINT(3709452929), "DataMngGetTaskHandle1", TO_UDINT(2602835227), "GetTaskHandle", 0$UINT, 2$UINT, 
(::DataManager.DataManagerPriority.pCh)$UINT, _CH_CLT_OBJ$UINT, 2#0000000000000010$UINT, TO_UDINT(2393054465), "DataManagerPriority", TO_UDINT(2393054465), "DataManagerPriority", 1$UINT, 0$UINT, 
END_FUNCTION


#define USER_CNT_DataManager 0

TYPE
	_LSL_STD_VMETH	: STRUCT
			CmdTable	: CMDMETH;
			UserFcts	: ARRAY[0..USER_CNT_DataManager] OF ^Void;
	END_STRUCT;
END_TYPE

FUNCTION DataManager::@STD
	VAR_OUTPUT
		ret_code	: CONFSTATES;
	END_VAR
	VAR
		vmt	: _LSL_STD_VMETH;
	END_VAR

	//Command Methods
	InitCmdTable (nCmd := nSTDCMD + USER_CNT_DataManager, pCmd := #vmt.CmdTable);
	ClassSvr.pMeth		:= StoreCmd (pCmd := #vmt.CmdTable, SHARED);

	IF ClassSvr.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	NoEntries.pMeth			:= StoreMethod( #NoEntries::Read(), #M_NO_F() );
	IF NoEntries.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	DeleteJobs.pMeth			:= StoreMethod( #M_RD_DIRECT(), #DeleteJobs::Write() );
	IF DeleteJobs.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	AcceptOfflineJobs.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_WR_DIRECT() );
	IF AcceptOfflineJobs.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;

END_FUNCTION

//{{LSL_IMPLEMENTATION
#pragma warning(disable:73 )
#pragma warning(disable:76 )

// Prototypen f�r CallBack Funktionen
FUNCTION GLOBAL UserCallbackReciver VAR_INPUT pthis : pvoid; dID : dint; sID : dint; length : UDINT; pData : pVoid; END_VAR VAR_OUTPUT dRetcode : BOOL; END_VAR;
FUNCTION GLOBAL UserCallbackJobState VAR_INPUT pthis : pvoid; JobID : dint; JobState : dint; END_VAR;

FUNCTION GLOBAL DataManager::ConnectReciver
	VAR_INPUT
		udID 	: DINT;
		pThis 	: pVoid;
		pCallback 	: pVoid;
	END_VAR
	VAR_OUTPUT
		dRetcode 	: DINT;
	END_VAR
  VAR
  	tmpIndex : dint;
  END_VAR

  // Maximale Anzahl an Revicer erreicht.
  dRetcode := -1; 
  // �berpr�fen ob der Empf�nger schon installiert wurde.
  tmpIndex := GetIndexOfReciver(DestinationID:=udID);
  
  // Wenn noch nicht istallliert
  if tmpIndex = -1 then
    // Kontrolle der Maximalen Anzahl an Empf�nger
    if sConnectedReciver.dCountConnectedReveicer < DataManager_MaxReceiver then
      // Daten des Empf�ngers eintragen.
      sConnectedReciver.aReceiver[sConnectedReciver.dCountConnectedReveicer].dID := udID;
      sConnectedReciver.aReceiver[sConnectedReciver.dCountConnectedReveicer].pCallBackThis := pThis;
      sConnectedReciver.aReceiver[sConnectedReciver.dCountConnectedReveicer].pCallBackFunct := pCallback;
      // Anzahl der Installierten Empf�nger erh�hen.
      sConnectedReciver.dCountConnectedReveicer +=1;
      // Empf�nger erfolgreich installiert.
      dRetcode := 1;
    end_if;
  else
    // Reciver wurde bereits installiert.
    dRetcode := -2;
    TRACE("// Reciver wurde bereits installiert.");
  end_if;

END_FUNCTION


FUNCTION GLOBAL DataManager::SetData
	VAR_INPUT
		dDestinationID 	: DINT;
		dSourceID 	: DINT;
		pData 	: pVoid;
		udSize 	: UDINT;
		pThis 	: pVoid;
		pCallBack 	: pVoid;
		udTimeOut 	: UDINT;
		dPrio 	: DINT;
	END_VAR
	VAR_OUTPUT
		dJobID 	: DINT;
	END_VAR
  VAR
  	tmpEntrie : DataManagerFIFO::t_e_Entry;
    CallerTask : GetTaskHandle::_ActTask;
  END_VAR
  
  // Herausfinden , aus welchem Task die Funktion aufgerufen wurde.
  CallerTask := DataMngGetTaskHandle1.GetActualTask();
  
  // Job nur dann eintragen , wenn nicht aus RealTimeTask aufgerufen wurde.  ( Mutex !! )
  #ifndef DataManager_AcceptRtJob
  if CallerTask <> GetTaskHandle::AT_Real then
  #endif

    // Daten nur eintragen , wenn auch online 
    if (coTCPCommunication.GetOnlineState() = TRUE) | (AcceptOfflineJobs <> 0)  then

      // Information �ber den Job eintragen.
      tmpEntrie.Header.Prio := dPrio;
      tmpEntrie.Header.Timeout := udTimeOut;
      tmpEntrie.Header.Timestamp := ops.tAbsolute ;
      tmpEntrie.Header.Valid := TRUE;
      dJobID := tmpEntrie.Header.JobID := dJobIDCounter;
      dJobIDCounter+=1;
      
      // Information �ber Sender und Empf�nger eintragen.
      tmpEntrie.Info.SourceID := dSourceID;
      tmpEntrie.Info.DestinationID := dDestinationID;
      tmpEntrie.Info.pthis := pThis;
      tmpEntrie.Info.pCallback := pCallBack;
      
      if tmpEntrie.Header.Prio <= 9 then
        if DataManagerPriority.Put(#tmpEntrie, pData,udSize) = FALSE then
          // Job konnte nicht eingetragen werden. Problem mit FiFo
          dJobID := -1;
        end_if;
      else
        dJobID := -3 ; // Priorit�t nich vorhanden. Job not accepted
      end_if;
    else
      dJobID := -2; // Offline Job not accepted
    end_if;

  #ifndef DataManager_AcceptRtJob
  else
    dJobID := -4;
    TRACE("DataManager::SetData -> it's not allowed to call this function from RT-TASK !!");
  end_if;
  #endif

  
END_FUNCTION

FUNCTION GLOBAL DataManager::RecivedData
	VAR_INPUT
		dDestinationID 	: DINT;
		dSourceID 	: DINT;
		udSize 	: UDINT;
		pData 	: pVoid;
	END_VAR
	VAR_OUTPUT
		dRetcode 	: DINT;
	END_VAR
  VAR
  	x : dint;
    bReciverOK : Bool;
  END_VAR

  dRetcode := -1;
  
  // nur wenn Empf�nger angemeldet sind !
  if sConnectedReciver.dCountConnectedReveicer > 0 then
    // Liste mit Connected Reciver durchgehen und an den richtigen weiterleiten.
    for x:= 0 to (sConnectedReciver.dCountConnectedReveicer-1) do
      // Wenn der Richtige Empf�nger gefunden wurde.
      //if DestinationID = sConnectedReciver.aReceiver[x].dID then
      if (dDestinationID AND 16#00FFFFFF) = sConnectedReciver.aReceiver[x].dID then
        // auf g�ltigen Pointer �berpr�fen.
        if(sConnectedReciver.aReceiver[x].pCallBackFunct <> nil) & (sConnectedReciver.aReceiver[x].pCallBackThis <> NIL) then
          // Aufruf des Empf�ngers mit den richtigen Daten.
          bReciverOK := sConnectedReciver.aReceiver[x].pCallBackFunct$UserCallbackReciver(sConnectedReciver.aReceiver[x].pCallBackThis, dDestinationID ,dSourceID ,udSize , pData); 
          if bReciverOK = TRUE then
            dRetcode := 1; // korrekt Empf�nger
          else 
            dRetcode := -2; // gloabler Error beim Empf�nger.
          end_if;
          exit;
        end_if;  
      end_if;
    end_for;
  end_if;
 
END_FUNCTION



FUNCTION GLOBAL DataManager::DeleteAllJobs

  DataManagerPriority.DeleteAllJobs();

END_FUNCTION

FUNCTION DataManager::GetIndexOfReciver
	VAR_INPUT
		DestinationID 	: DINT;
	END_VAR
	VAR_OUTPUT
		dRetcode 	: DINT;
	END_VAR
  VAR
  	x : dint;
  END_VAR
  
  // Eintrag nicht vorhanden.
  dRetcode := -1;
  
  // nur wenn Empf�nger angemeldet sind !
  if sConnectedReciver.dCountConnectedReveicer > 0 then
    // Liste mit Connected Reciver durchgehen und an den richtigen weiterleiten.
    for x:= 0 to (sConnectedReciver.dCountConnectedReveicer-1) do
      // Wenn der Richtige Empf�nger gefunden wurde.
      if DestinationID = sConnectedReciver.aReceiver[x].dID then
        // Index zur�ckliefern und abbrechen.
        dRetcode := x;
        exit;
      end_if;
    end_for;
  end_if;

END_FUNCTION



FUNCTION GLOBAL DataManager::GetNextJob
	VAR_INPUT
		pEntrieInfo 	: ^DataManagerFIFO::t_e_Entry;
		pData 	: pVoid;
		pLength 	: ^UDINT;
	END_VAR
	VAR_OUTPUT
		dRetcode 	: DINT;
	END_VAR
  
  // n�chsten Job vom Daten Manager holen.
  dRetcode := DataManagerPriority.Get(pData, pLength, pEntrieInfo);

END_FUNCTION


#pragma warning(default:73 )
#pragma warning(default:76 )





FUNCTION VIRTUAL GLOBAL DataManager::NoEntries::Read
	VAR_OUTPUT
		output (EAX) 	: UDINT;
	END_VAR

	// Anzahl aller Eintr�ge in den Buffern auslesen
  NoEntries := DataManagerPriority.ClassSvr.Read();
	output := NoEntries;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL DataManager::DeleteJobs::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

  // alle Jobs im Datenmanager l�schen.
  DataManagerPriority.DeleteAllJobs();
  // Anzahl der Eintr�ge aktualisieren.
  NoEntries.Read();
	result := input;

END_FUNCTION


FUNCTION GLOBAL DataManager::DeleteJob
	VAR_INPUT
		dJobId 	: DINT;
	END_VAR
	VAR_OUTPUT
		bRetcode 	: BOOL;
	END_VAR

  bRetcode := DataManagerPriority.DeleteJob(dJobId);

END_FUNCTION

FUNCTION GLOBAL DataManager::GetOnlineState
	VAR_OUTPUT
		bOnline 	: BOOL;
	END_VAR
  
  bOnline := to_bool(coTCPCommunication.GetOnlineState());

END_FUNCTION