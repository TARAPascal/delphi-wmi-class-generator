/// <summary>
/// Unit generated using the Delphi Wmi class generator tool, Copyright Rodrigo Ruz V. 2010-2012
/// Application version 1.0.4674.62299
/// WMI version 7601.17514
/// Creation Date 17-10-2012 18:19:23
/// Namespace root\CIMV2 Class Win32_PerfRawData_MSDTCBridge4000_MSDTCBridge4000
/// MSDN info about this class http://msdn2.microsoft.com/library/default.asp?url=/library/en-us/wmisdk/wmi/Win32_PerfRawData_MSDTCBridge4000_MSDTCBridge4000.asp
/// </summary>


unit uWin32_PerfRawData_MSDTCBridge4000_MSDTCBridge4000;

interface

uses
 Classes,
 Activex,
 Variants,
 ComObj,
 uWmiDelphiClass;

type
  {$REGION 'Documentation'}
  /// <summary>
  /// MSDTC Bridge 4.0.0.0 performance counters
  /// </summary>
  {$ENDREGION}
  TWin32_PerfRawData_MSDTCBridge4000_MSDTCBridge4000=class(TWmiClass)
  private
    FAverageparticipantcommitresponsetime : Cardinal;
    FAverageparticipantcommitresponsetime_Base : Cardinal;
    FAverageparticipantprepareresponsetime : Cardinal;
    FAverageparticipantprepareresponsetime_Base : Cardinal;
    FCaption                            : String;
    FCommitretrycountPersec             : Cardinal;
    FDescription                        : String;
    FFaultsreceivedcountPersec          : Cardinal;
    FFaultssentcountPersec              : Cardinal;
    FFrequency_Object                   : Int64;
    FFrequency_PerfTime                 : Int64;
    FFrequency_Sys100NS                 : Int64;
    FMessagesendfailuresPersec          : Cardinal;
    FName                               : String;
    FPreparedretrycountPersec           : Cardinal;
    FPrepareretrycountPersec            : Cardinal;
    FReplayretrycountPersec             : Cardinal;
    FTimestamp_Object                   : Int64;
    FTimestamp_PerfTime                 : Int64;
    FTimestamp_Sys100NS                 : Int64;
  public
   constructor Create(LoadWmiData : boolean=True); overload;
   destructor Destroy;Override;
   {$REGION 'Documentation'}
   /// <summary>
   /// Average time in milliseconds for the WS-AT service to receive a Commit message 
   /// response from a participant.
   /// </summary>
   {$ENDREGION}
   property Averageparticipantcommitresponsetime : Cardinal read FAverageparticipantcommitresponsetime;
   property Averageparticipantcommitresponsetime_Base : Cardinal read FAverageparticipantcommitresponsetime_Base;
   {$REGION 'Documentation'}
   /// <summary>
   /// Average time in milliseconds for the WS-AT service to receive a Prepare message 
   /// response from a participant.
   /// </summary>
   {$ENDREGION}
   property Averageparticipantprepareresponsetime : Cardinal read FAverageparticipantprepareresponsetime;
   property Averageparticipantprepareresponsetime_Base : Cardinal read FAverageparticipantprepareresponsetime_Base;
   {$REGION 'Documentation'}
   /// <summary>
   /// A short textual description (one-line string) for the statistic or metric.
   /// </summary>
   {$ENDREGION}
   property Caption : String read FCaption;
   {$REGION 'Documentation'}
   /// <summary>
   /// The number of Commit retry messages that the WS-AT service has sent per second.
   /// </summary>
   {$ENDREGION}
   property CommitretrycountPersec : Cardinal read FCommitretrycountPersec;
   {$REGION 'Documentation'}
   /// <summary>
   /// A textual description of the statistic or metric.
   /// </summary>
   {$ENDREGION}
   property Description : String read FDescription;
   {$REGION 'Documentation'}
   /// <summary>
   /// The number of Fault messages that the WS-AT service has received per second.
   /// </summary>
   {$ENDREGION}
   property FaultsreceivedcountPersec : Cardinal read FFaultsreceivedcountPersec;
   {$REGION 'Documentation'}
   /// <summary>
   /// The number of Fault messages that the WS-AT service has sent per second.
   /// </summary>
   {$ENDREGION}
   property FaultssentcountPersec : Cardinal read FFaultssentcountPersec;
   property Frequency_Object : Int64 read FFrequency_Object;
   property Frequency_PerfTime : Int64 read FFrequency_PerfTime;
   property Frequency_Sys100NS : Int64 read FFrequency_Sys100NS;
   {$REGION 'Documentation'}
   /// <summary>
   /// The number of WS-AT protocol messages that the WS-AT service failed to send per 
   /// second.
   /// </summary>
   {$ENDREGION}
   property MessagesendfailuresPersec : Cardinal read FMessagesendfailuresPersec;
   {$REGION 'Documentation'}
   /// <summary>
   /// The Name property defines the label by which the statistic or metric is known. 
   /// When subclassed, the property can be overridden to be a Key property. 
   /// </summary>
   {$ENDREGION}
   property Name : String read FName;
   {$REGION 'Documentation'}
   /// <summary>
   /// The number of Prepared retry messages that the WS-AT service has sent per 
   /// second.
   /// </summary>
   {$ENDREGION}
   property PreparedretrycountPersec : Cardinal read FPreparedretrycountPersec;
   {$REGION 'Documentation'}
   /// <summary>
   /// The number of Prepare retry messages that the WS-AT service has sent per second.
   /// </summary>
   {$ENDREGION}
   property PrepareretrycountPersec : Cardinal read FPrepareretrycountPersec;
   {$REGION 'Documentation'}
   /// <summary>
   /// The number of Replay retry messages that the WS-AT service has sent per second.
   /// </summary>
   {$ENDREGION}
   property ReplayretrycountPersec : Cardinal read FReplayretrycountPersec;
   property Timestamp_Object : Int64 read FTimestamp_Object;
   property Timestamp_PerfTime : Int64 read FTimestamp_PerfTime;
   property Timestamp_Sys100NS : Int64 read FTimestamp_Sys100NS;
   procedure SetCollectionIndex(Index : Integer); override;
  end;



implementation


{TWin32_PerfRawData_MSDTCBridge4000_MSDTCBridge4000}

constructor TWin32_PerfRawData_MSDTCBridge4000_MSDTCBridge4000.Create(LoadWmiData : boolean=True);
begin
  inherited Create(LoadWmiData,'root\CIMV2','Win32_PerfRawData_MSDTCBridge4000_MSDTCBridge4000');
end;

destructor TWin32_PerfRawData_MSDTCBridge4000_MSDTCBridge4000.Destroy;
begin
  inherited;
end;

procedure TWin32_PerfRawData_MSDTCBridge4000_MSDTCBridge4000.SetCollectionIndex(Index : Integer);
begin
  if (Index>=0) and (Index<=FWmiCollection.Count-1) and (FWmiCollectionIndex<>Index) then
  begin
    FWmiCollectionIndex:=Index;
    FAverageparticipantcommitresponsetime            := VarCardinalNull(inherited Value['Averageparticipantcommitresponsetime']);
    FAverageparticipantcommitresponsetime_Base       := VarCardinalNull(inherited Value['Averageparticipantcommitresponsetime_Base']);
    FAverageparticipantprepareresponsetime           := VarCardinalNull(inherited Value['Averageparticipantprepareresponsetime']);
    FAverageparticipantprepareresponsetime_Base      := VarCardinalNull(inherited Value['Averageparticipantprepareresponsetime_Base']);
    FCaption                                         := VarStrNull(inherited Value['Caption']);
    FCommitretrycountPersec                          := VarCardinalNull(inherited Value['CommitretrycountPersec']);
    FDescription                                     := VarStrNull(inherited Value['Description']);
    FFaultsreceivedcountPersec                       := VarCardinalNull(inherited Value['FaultsreceivedcountPersec']);
    FFaultssentcountPersec                           := VarCardinalNull(inherited Value['FaultssentcountPersec']);
    FFrequency_Object                                := VarInt64Null(inherited Value['Frequency_Object']);
    FFrequency_PerfTime                              := VarInt64Null(inherited Value['Frequency_PerfTime']);
    FFrequency_Sys100NS                              := VarInt64Null(inherited Value['Frequency_Sys100NS']);
    FMessagesendfailuresPersec                       := VarCardinalNull(inherited Value['MessagesendfailuresPersec']);
    FName                                            := VarStrNull(inherited Value['Name']);
    FPreparedretrycountPersec                        := VarCardinalNull(inherited Value['PreparedretrycountPersec']);
    FPrepareretrycountPersec                         := VarCardinalNull(inherited Value['PrepareretrycountPersec']);
    FReplayretrycountPersec                          := VarCardinalNull(inherited Value['ReplayretrycountPersec']);
    FTimestamp_Object                                := VarInt64Null(inherited Value['Timestamp_Object']);
    FTimestamp_PerfTime                              := VarInt64Null(inherited Value['Timestamp_PerfTime']);
    FTimestamp_Sys100NS                              := VarInt64Null(inherited Value['Timestamp_Sys100NS']);
  end;
end;

end.
