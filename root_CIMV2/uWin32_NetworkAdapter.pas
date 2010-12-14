// Unit generated using the Delphi Wmi class generator tool, Copyright Rodrigo Ruz V. 2010
// WMI version 7600.16385
// Namespace root\CIMV2 Class Win32_NetworkAdapter
// MSDN info about this class http://msdn2.microsoft.com/library/default.asp?url=/library/en-us/wmisdk/wmi/Win32_NetworkAdapter.asp
unit uWin32_NetworkAdapter;

interface

uses

 Activex,
 ComObj,
 uWmiDelphiClass;

type
   ///<summary>
   ///The Win32_NetworkAdapter class represents a network adapter on a Win32 system.
   ///</summary>
  TWin32_NetworkAdapter=class(TWmiClass)
  private
   FAdapterType                        : String;
   FAdapterTypeId                      : Word;
   FAutoSense                          : Boolean;
   FAvailability                       : Word;
   FCaption                            : String;
   FConfigManagerErrorCode             : LongInt;
   FConfigManagerUserConfig            : Boolean;
   FCreationClassName                  : String;
   FDescription                        : String;
   FDeviceID                           : String;
   FErrorCleared                       : Boolean;
   FErrorDescription                   : String;
   FGUID                               : String;
   FIndex                              : LongInt;
   FInstallDate                        : TDateTime;
   FInstalled                          : Boolean;
   FInterfaceIndex                     : LongInt;
   FLastErrorCode                      : LongInt;
   FMACAddress                         : String;
   FManufacturer                       : String;
   FMaxNumberControlled                : LongInt;
   FMaxSpeed                           : Int64;
   FName                               : String;
   FNetConnectionID                    : String;
   FNetConnectionStatus                : Word;
   FNetEnabled                         : Boolean;
   FNetworkAddresses                   : String;
   FPermanentAddress                   : String;
   FPhysicalAdapter                    : Boolean;
   FPNPDeviceID                        : String;
   FPowerManagementCapabilities        : Word;
   FPowerManagementSupported           : Boolean;
   FProductName                        : String;
   FServiceName                        : String;
   FSpeed                              : Int64;
   FStatus                             : String;
   FStatusInfo                         : Word;
   FSystemCreationClassName            : String;
   FSystemName                         : String;
   FTimeOfLastReset                    : TDateTime;
  public
   ///<summary>
   ///The AdapterType property reflects the network medium in use. This property may 
   ///not be applicable to all types of network adapters listed within this class. 
   ///Windows NT only.
   ///</summary>
   property AdapterType : String read FAdapterType;
   ///<summary>
   ///The AdapterTypeId property reflects the network medium in use. This property 
   ///gives the same information as the AdapterType property, except that the the 
   ///information is returned in the form of an integer value that corresponds to the 
   ///following: 
   ///0 - Ethernet 802.3
   ///1 - Token Ring 802.5
   ///2 - Fiber Distributed Data 
   ///Interface (FDDI)
   ///3 - Wide Area Network (WAN)
   ///4 - LocalTalk
   ///5 - Ethernet using 
   ///DIX header format
   ///6 - ARCNET
   ///7 - ARCNET (878.2)
   ///8 - ATM
   ///9 - Wireless
   ///10 - 
   ///Infrared Wireless
   ///11 - Bpc
   ///12 - CoWan
   ///13 - 1394
   ///This property may not be 
   ///applicable to all types of network adapters listed within this class. Windows 
   ///NT only.
   ///</summary>
   property AdapterTypeId : Word read FAdapterTypeId;
   ///<summary>
   ///A boolean indicating whether the NetworkAdapter is capable of automatically 
   ///determining the speed or other communications characteristics of the attached 
   ///network media.
   ///</summary>
   property AutoSense : Boolean read FAutoSense;
   ///<summary>
   ///The availability and status of the device.  For example, the Availability 
   ///property indicates that the device is running and has full power (value=3), or 
   ///is in a warning (4), test (5), degraded (10) or power save state (values 13-15 
   ///and 17). Regarding the power saving states, these are defined as follows: Value 
   ///13 ("Power Save - Unknown") indicates that the device is known to be in a power 
   ///save mode, but its exact status in this mode is unknown; 14 
   ///("Power Save - Low Power Mode") indicates that the device is in a power save 
   ///state but still functioning, and may exhibit degraded performance; 15 
   ///("Power Save - Standby") describes that the device is not functioning but could 
   ///be brought to full power 'quickly'; and value 17 ("Power Save - Warning") 
   ///indicates that the device is in a warning state, though also in a power save 
   ///mode.
   ///</summary>
   property Availability : Word read FAvailability;
   ///<summary>
   ///The Caption property is a short textual description (one-line string) of the 
   ///object.
   ///</summary>
   property Caption : String read FCaption;
   ///<summary>
   ///Indicates the Win32 Configuration Manager error code.  The following values may 
   ///be returned: 
   ///0      This device is working properly. 
   ///1      This device is 
   ///not configured correctly. 
   ///2      Windows cannot load the driver for this 
   ///device. 
   ///3      The driver for this device might be corrupted, or your system 
   ///may be running low on memory or other resources. 
   ///4      This device is not 
   ///working properly. One of its drivers or your registry might be corrupted. 
   ///5    
   ///  The driver for this device needs a resource that Windows cannot manage. 
   ///6    
   ///  The boot configuration for this device conflicts with other devices. 
   ///7      
   ///Cannot filter. 
   ///8      The driver loader for the device is missing. 
   ///9      
   ///This device is not working properly because the controlling firmware is 
   ///reporting the resources for the device incorrectly. 
   ///10     This device cannot 
   ///start. 
   ///11     This device failed. 
   ///12     This device cannot find enough free 
   ///resources that it can use. 
   ///13     Windows cannot verify this 
   ///device's resources. 
   ///14     This device cannot work properly until you restart your computer. 
   ///15     This device is not working properly because there is probably a re-enumeration problem. 
   ///16     Windows cannot identify all the resources this device uses. 
   ///17     This device is asking for an unknown resource type. 
   ///18     Reinstall the drivers for this device. 
   ///19     Your registry might be corrupted. 
   ///20     Failure using the VxD loader. 
   ///21     System failure: Try changing the driver for this device. If that does not work, see your hardware documentation. Windows is removing this device. 
   ///22     This device is disabled. 
   ///23     System failure: Try changing the driver for this device. If that doesn't 
   ///work, see your hardware documentation. 
   ///24     This device is not present, is 
   ///not working properly, or does not have all its drivers installed. 
   ///25     
   ///Windows is still setting up this device. 
   ///26     Windows is still setting up 
   ///this device. 
   ///27     This device does not have valid log configuration. 
   ///28     
   ///The drivers for this device are not installed. 
   ///29     This device is disabled 
   ///because the firmware of the device did not give it the required resources. 
   ///30  
   ///   This device is using an Interrupt Request (IRQ) resource that another device 
   ///is using. 
   ///31     This device is not working properly because Windows cannot 
   ///load the drivers required for this device.
   ///</summary>
   property ConfigManagerErrorCode : LongInt read FConfigManagerErrorCode;
   ///<summary>
   ///Indicates whether the device is using a user-defined configuration.
   ///</summary>
   property ConfigManagerUserConfig : Boolean read FConfigManagerUserConfig;
   ///<summary>
   ///CreationClassName indicates the name of the class or the subclass used in the 
   ///creation of an instance. When used with the other key properties of this class, 
   ///this property allows all instances of this class and its subclasses to be 
   ///uniquely identified.
   ///</summary>
   property CreationClassName : String read FCreationClassName;
   ///<summary>
   ///The Description property provides a textual description of the object. 
   ///</summary>
   property Description : String read FDescription;
   ///<summary>
   ///The DeviceID property contains a string uniquely identifying the network 
   ///adapter from other devices on the system.
   ///</summary>
   property DeviceID : String read FDeviceID;
   ///<summary>
   ///ErrorCleared is a boolean property indicating that the error reported in 
   ///LastErrorCode property is now cleared.
   ///</summary>
   property ErrorCleared : Boolean read FErrorCleared;
   ///<summary>
   ///ErrorDescription is a free-form string supplying more information about the 
   ///error recorded in LastErrorCode property, and information on any corrective 
   ///actions that may be taken.
   ///</summary>
   property ErrorDescription : String read FErrorDescription;
   ///<summary>
   ///The GUID property specifies the Globally-unique identifier for the connection.
   ///</summary>
   property GUID : String read FGUID;
   ///<summary>
   ///The Index property indicates the network adapter's  index number, which is stored in the system registry. 
   ///Example: 0.
   ///</summary>
   property Index : LongInt read FIndex;
   ///<summary>
   ///The InstallDate property is datetime value indicating when the object was 
   ///installed. A lack of a value does not indicate that the object is not installed.
   ///</summary>
   property InstallDate : TDateTime read FInstallDate;
   ///<summary>
   ///The Installed property determines whether the network adapter is installed in 
   ///the system.
   ///Values: TRUE or FALSE. A value of TRUE indicates the network 
   ///adapter is installed.  
   ///The Installed property has been deprecated.  There is 
   ///no replacementvalue and this property is now considered obsolete.
   ///</summary>
   property Installed : Boolean read FInstalled;
   ///<summary>
   ///The InterfaceIndex property contains the index value that uniquely identifies 
   ///the local interface.
   ///</summary>
   property InterfaceIndex : LongInt read FInterfaceIndex;
   ///<summary>
   ///LastErrorCode captures the last error code reported by the logical device.
   ///</summary>
   property LastErrorCode : LongInt read FLastErrorCode;
   ///<summary>
   ///The MACAddress property indicates the media access control address for this 
   ///network adapter. A MAC address is a unique 48-bit number assigned to the 
   ///network adapter by the manufacturer. It uniquely identifies this network 
   ///adapter and is used for mapping TCP/IP network communications.
   ///</summary>
   property MACAddress : String read FMACAddress;
   ///<summary>
   ///The Manufacturer property indicates the name of the network adapter's manufacturer.
   ///Example: 3COM.
   ///</summary>
   property Manufacturer : String read FManufacturer;
   ///<summary>
   ///The MaxNumberControlled property indicates the maximum number of directly 
   ///addressable ports supported by this network adapter. A value of zero should be 
   ///used if the number is unknown.
   ///</summary>
   property MaxNumberControlled : LongInt read FMaxNumberControlled;
   ///<summary>
   ///The maximum speed, in bits per second, for the network adapter.
   ///</summary>
   property MaxSpeed : Int64 read FMaxSpeed;
   ///<summary>
   ///The Name property defines the label by which the object is known. When 
   ///subclassed, the Name property can be overridden to be a Key property.
   ///</summary>
   property Name : String read FName;
   ///<summary>
   ///The NetConnectionID property specifies the name of the network connection as it 
   ///appears in the 'Network Connections' folder.
   ///</summary>
   property NetConnectionID : String read FNetConnectionID;
   ///<summary>
   ///NetConnectionStatus is a string indicating the state of the network adapter's connection to the network. The value of the property is to be interpreted as follows:
   ///0 - Disconnected
   ///1 - Connecting
   ///2 - Connected
   ///3 - Disconnecting
   ///4 - Hardware not present
   ///5 - Hardware disabled
   ///6 - Hardware malfunction
   ///7 - Media disconnected
   ///8 - Authenticating
   ///9 - Authentication succeeded
   ///10 - Authentication failed
   ///11 - Invalid Address
   ///12 - Credentials Required
   ///.. - Other - For integer values other than those listed above, refer to Win32 error code documentation.
   ///</summary>
   property NetConnectionStatus : Word read FNetConnectionStatus;
   ///<summary>
   ///The NetEnabled property specifies whether the network connection is enabled or 
   ///not.
   ///</summary>
   property NetEnabled : Boolean read FNetEnabled;
   ///<summary>
   ///An array of strings indicating the network addresses for an adapter.
   ///</summary>
   property NetworkAddresses : String read FNetworkAddresses;
   ///<summary>
   ///PermanentAddress defines the network address hard coded into an adapter.  This 
   ///'hard coded' address may be changed via firmware upgrade or software 
   ///configuration. If so, this field should be updated when the change is made.  
   ///PermanentAddress should be left blank if no 'hard coded' address exists for the 
   ///network adapter.
   ///</summary>
   property PermanentAddress : String read FPermanentAddress;
   ///<summary>
   ///The PhysicalAdapter property specifies whether the adapter is physical adapter 
   ///or logical adapter.
   ///</summary>
   property PhysicalAdapter : Boolean read FPhysicalAdapter;
   ///<summary>
   ///Indicates the Win32 Plug and Play device ID of the logical device.  Example: 
   ///*PNP030b
   ///</summary>
   property PNPDeviceID : String read FPNPDeviceID;
   ///<summary>
   ///Indicates the specific power-related capabilities of the logical device. The 
   ///array values, 0="Unknown", 1="Not Supported" and 2="Disabled" are self-
   ///explanatory. The value, 3="Enabled" indicates that the power management 
   ///features are currently enabled but the exact feature set is unknown or the 
   ///information is unavailable. "Power Saving Modes Entered Automatically" (4) 
   ///describes that a device can change its power state based on usage or other 
   ///criteria. "Power State Settable" (5) indicates that the SetPowerState method is 
   ///supported. "Power Cycling Supported" (6) indicates that the SetPowerState 
   ///method can be invoked with the PowerState input variable set to 5 
   ///("Power Cycle"). "Timed Power On Supported" (7) indicates that the 
   ///SetPowerState method can be invoked with the PowerState input variable set to 5 
   ///("Power Cycle") and the Time parameter set to a specific date and time, or 
   ///interval, for power-on.
   ///</summary>
   property PowerManagementCapabilities : Word read FPowerManagementCapabilities;
   ///<summary>
   ///Boolean indicating that the Device can be power managed - ie, put into a power 
   ///save state. This boolean does not indicate that power management features are 
   ///currently enabled, or if enabled, what features are supported. Refer to the 
   ///PowerManagementCapabilities array for this information. If this boolean is 
   ///false, the integer value 1, for the string, "Not Supported", should be the only 
   ///entry in the PowerManagementCapabilities array.
   ///</summary>
   property PowerManagementSupported : Boolean read FPowerManagementSupported;
   ///<summary>
   ///The ProductName property indicates the product name of the network 
   ///adapter.
   ///Example: Fast EtherLink XL
   ///</summary>
   property ProductName : String read FProductName;
   ///<summary>
   ///The ServiceName property indicates the service name of the network adapter. 
   ///This name is usually shorter that the full product name. 
   ///Example: Elnkii.
   ///</summary>
   property ServiceName : String read FServiceName;
   ///<summary>
   ///An estimate of the current bandwidth in bits per second. For endpoints which 
   ///vary in bandwidth or for those where no accurate estimation can be made, this 
   ///property should contain the nominal bandwidth.
   ///</summary>
   property Speed : Int64 read FSpeed;
   ///<summary>
   ///The Status property is a string indicating the current status of the object. 
   ///Various operational and non-operational statuses can be defined. Operational 
   ///statuses are "OK", "Degraded" and "Pred Fail". "Pred Fail" indicates that an 
   ///element may be functioning properly but predicting a failure in the near 
   ///future. An example is a SMART-enabled hard drive. Non-operational statuses can 
   ///also be specified. These are "Error", "Starting", "Stopping" and "Service". The 
   ///latter, "Service", could apply during mirror-resilvering of a disk, reload of a 
   ///user permissions list, or other administrative work. Not all such work is on-
   ///line, yet the managed element is neither "OK" nor in one of the other states.
   ///</summary>
   property Status : String read FStatus;
   ///<summary>
   ///StatusInfo is a string indicating whether the logical device is in an enabled 
   ///(value = 3), disabled (value = 4) or some other (1) or unknown (2) state. If 
   ///this property does not apply to the logical device, the value, 5 
   ///("Not Applicable"), should be used.
   ///</summary>
   property StatusInfo : Word read FStatusInfo;
   ///<summary>
   ///The scoping System's CreationClassName.
   ///</summary>
   property SystemCreationClassName : String read FSystemCreationClassName;
   ///<summary>
   ///The scoping System's Name.
   ///</summary>
   property SystemName : String read FSystemName;
   ///<summary>
   ///The TimeOfLastReset property indicates when the network adapter was last reset.
   ///</summary>
   property TimeOfLastReset : TDateTime read FTimeOfLastReset;
   ///<summary>
   ///SetPowerState defines the desired power state for a logical device and when a 
   ///device should be put into that state. The desired power state is specified by 
   ///setting the PowerState parameter to one of the following integer values: 
   ///1="Full Power", 2="Power Save - Low Power Mode", 3="Power Save - Standby", 
   ///4="Power Save - Other", 5="Power Cycle" or 6="Power Off". The Time parameter 
   ///(for all state changes, except 5, "Power Cycle") indicates when the power state 
   ///should be set, either as a regular date-time value or as an interval value 
   ///(where the interval begins when the method invocation is received). When the 
   ///PowerState parameter is equal to 5, "Power Cycle", the Time parameter indicates 
   ///when the device should power on again. Power off is immediate. SetPowerState 
   ///should return 0 if successful, 1 if the specified PowerState and Time request 
   ///is not supported, and some other value if any other error occurred. In a 
   ///subclass, the set of possible return codes could be specified, using a ValueMap 
   ///qualifier on the method. The strings to which the ValueMap contents are 
   ///'translated' may also be specified in the subclass as a Values array qualifier.
   ///</summary>
   function SetPowerState(PowerState : Word;Time : TDateTime): Integer;
   ///<summary>
   ///Requests a reset of the logical device. The return value should be 0 if the 
   ///request was successfully executed, 1 if the request is not supported and some 
   ///other value if an error occurred.
   ///</summary>
   function Reset: Integer;
   ///<summary>
   ///The Enable method enables the network adapter on the target computer. 
   ///</summary>
   function Enable: Integer;
   ///<summary>
   ///The Disable method disables the network adapter on the target computer. 
   ///</summary>
   function Disable: Integer;
   procedure SetCollectionIndex(Index:Integer); override;
   constructor Create; overload;
   constructor Create(LoadData:boolean); overload;
  end;


implementation


{TWin32_NetworkAdapter}

 constructor TWin32_NetworkAdapter.Create;
 begin
   Create(True);
 end;

 constructor TWin32_NetworkAdapter.Create(LoadData: boolean);
 begin
   Create(LoadData,'root\CIMV2','Win32_NetworkAdapter');
 end;

 procedure TWin32_NetworkAdapter.SetCollectionIndex(Index: Integer);
 begin
    if (Index>=0) and (Index<=FWmiCollection.Count-1) then
    begin
       FWmiCollectionIndex:=Index;
       FAdapterType                         :=VarStrNull(GetPropertyValue('AdapterType'));
       FAdapterTypeId                       :=VarWordNull(GetPropertyValue('AdapterTypeId'));
       FAutoSense                           :=VarBoolNull(GetPropertyValue('AutoSense'));
       FAvailability                        :=VarWordNull(GetPropertyValue('Availability'));
       FCaption                             :=VarStrNull(GetPropertyValue('Caption'));
       FConfigManagerErrorCode              :=VarLongNull(GetPropertyValue('ConfigManagerErrorCode'));
       FConfigManagerUserConfig             :=VarBoolNull(GetPropertyValue('ConfigManagerUserConfig'));
       FCreationClassName                   :=VarStrNull(GetPropertyValue('CreationClassName'));
       FDescription                         :=VarStrNull(GetPropertyValue('Description'));
       FDeviceID                            :=VarStrNull(GetPropertyValue('DeviceID'));
       FErrorCleared                        :=VarBoolNull(GetPropertyValue('ErrorCleared'));
       FErrorDescription                    :=VarStrNull(GetPropertyValue('ErrorDescription'));
       FGUID                                :=VarStrNull(GetPropertyValue('GUID'));
       FIndex                               :=VarLongNull(GetPropertyValue('Index'));
       FInstallDate                         :=VarDateTimeNull(GetPropertyValue('InstallDate'));
       FInstalled                           :=VarBoolNull(GetPropertyValue('Installed'));
       FInterfaceIndex                      :=VarLongNull(GetPropertyValue('InterfaceIndex'));
       FLastErrorCode                       :=VarLongNull(GetPropertyValue('LastErrorCode'));
       FMACAddress                          :=VarStrNull(GetPropertyValue('MACAddress'));
       FManufacturer                        :=VarStrNull(GetPropertyValue('Manufacturer'));
       FMaxNumberControlled                 :=VarLongNull(GetPropertyValue('MaxNumberControlled'));
       FMaxSpeed                            :=VarInt64Null(GetPropertyValue('MaxSpeed'));
       FName                                :=VarStrNull(GetPropertyValue('Name'));
       FNetConnectionID                     :=VarStrNull(GetPropertyValue('NetConnectionID'));
       FNetConnectionStatus                 :=VarWordNull(GetPropertyValue('NetConnectionStatus'));
       FNetEnabled                          :=VarBoolNull(GetPropertyValue('NetEnabled'));
       FNetworkAddresses                    :=VarStrNull(GetPropertyValue('NetworkAddresses'));
       FPermanentAddress                    :=VarStrNull(GetPropertyValue('PermanentAddress'));
       FPhysicalAdapter                     :=VarBoolNull(GetPropertyValue('PhysicalAdapter'));
       FPNPDeviceID                         :=VarStrNull(GetPropertyValue('PNPDeviceID'));
       FPowerManagementCapabilities         :=VarWordNull(GetPropertyValue('PowerManagementCapabilities'));
       FPowerManagementSupported            :=VarBoolNull(GetPropertyValue('PowerManagementSupported'));
       FProductName                         :=VarStrNull(GetPropertyValue('ProductName'));
       FServiceName                         :=VarStrNull(GetPropertyValue('ServiceName'));
       FSpeed                               :=VarInt64Null(GetPropertyValue('Speed'));
       FStatus                              :=VarStrNull(GetPropertyValue('Status'));
       FStatusInfo                          :=VarWordNull(GetPropertyValue('StatusInfo'));
       FSystemCreationClassName             :=VarStrNull(GetPropertyValue('SystemCreationClassName'));
       FSystemName                          :=VarStrNull(GetPropertyValue('SystemName'));
       FTimeOfLastReset                     :=VarDateTimeNull(GetPropertyValue('TimeOfLastReset'));
    end;
 end;


//not static, OutParams=1, InParams>0
function TWin32_NetworkAdapter.SetPowerState(PowerState : Word;Time : TDateTime): Integer;
var
  objSWbemLocator : OLEVariant;
  objWMIService   : OLEVariant;
  objInvoker      : OLEVariant;
  ReturnValue     : OLEVariant;
  oEnum           : IEnumvariant;
  colItem         : OLEVariant;
  iValue          : LongWord;
  CurrIndex       : integer;
begin
  Result:=-1;
  objSWbemLocator := CreateOleObject('WbemScripting.SWbemLocator');
  objWMIService   := objSWbemLocator.ConnectServer('localhost','root\CIMV2', '','');
  objInvoker      := objWMIService.InstancesOf('Win32_NetworkAdapter');
  oEnum           := IUnknown(objInvoker._NewEnum) as IEnumVariant;
  CurrIndex       := 0;
  while oEnum.Next(1, colItem, iValue) = 0 do
  begin
  if CurrIndex=FWmiCollectionIndex then
    begin
     ReturnValue:=colItem.SetPowerState(PowerState,Time);
     Result     :=VarIntegerNull(ReturnValue);
     Exit;
    end;
   Inc(CurrIndex);
  end;
end;


//not static, OutParams=1, InParams=0
function TWin32_NetworkAdapter.Reset: integer;
var
  objSWbemLocator : OLEVariant;
  objWMIService   : OLEVariant;
  objInvoker      : OLEVariant;
  ReturnValue     : OLEVariant;
  oEnum           : IEnumvariant;
  colItem         : OLEVariant;
  iValue          : LongWord;
  CurrIndex       : integer;
begin
 Result:=-1;
  objSWbemLocator := CreateOleObject('WbemScripting.SWbemLocator');
  objWMIService   := objSWbemLocator.ConnectServer('localhost','root\CIMV2', '','');
  objInvoker      := objWMIService.InstancesOf('Win32_NetworkAdapter');
  oEnum           := IUnknown(objInvoker._NewEnum) as IEnumVariant;
  CurrIndex       := 0;
  while oEnum.Next(1, colItem, iValue) = 0 do
  begin
   if CurrIndex=FWmiCollectionIndex then
   begin
     ReturnValue:=colItem.Reset;
     Result     :=VarIntegerNull(ReturnValue);
     Exit;
   end;
   Inc(CurrIndex);
  end;
end;


//not static, OutParams=1, InParams=0
function TWin32_NetworkAdapter.Enable: integer;
var
  objSWbemLocator : OLEVariant;
  objWMIService   : OLEVariant;
  objInvoker      : OLEVariant;
  ReturnValue     : OLEVariant;
  oEnum           : IEnumvariant;
  colItem         : OLEVariant;
  iValue          : LongWord;
  CurrIndex       : integer;
begin
 Result:=-1;
  objSWbemLocator := CreateOleObject('WbemScripting.SWbemLocator');
  objWMIService   := objSWbemLocator.ConnectServer('localhost','root\CIMV2', '','');
  objInvoker      := objWMIService.InstancesOf('Win32_NetworkAdapter');
  oEnum           := IUnknown(objInvoker._NewEnum) as IEnumVariant;
  CurrIndex       := 0;
  while oEnum.Next(1, colItem, iValue) = 0 do
  begin
   if CurrIndex=FWmiCollectionIndex then
   begin
     ReturnValue:=colItem.Enable;
     Result     :=VarIntegerNull(ReturnValue);
     Exit;
   end;
   Inc(CurrIndex);
  end;
end;


//not static, OutParams=1, InParams=0
function TWin32_NetworkAdapter.Disable: integer;
var
  objSWbemLocator : OLEVariant;
  objWMIService   : OLEVariant;
  objInvoker      : OLEVariant;
  ReturnValue     : OLEVariant;
  oEnum           : IEnumvariant;
  colItem         : OLEVariant;
  iValue          : LongWord;
  CurrIndex       : integer;
begin
 Result:=-1;
  objSWbemLocator := CreateOleObject('WbemScripting.SWbemLocator');
  objWMIService   := objSWbemLocator.ConnectServer('localhost','root\CIMV2', '','');
  objInvoker      := objWMIService.InstancesOf('Win32_NetworkAdapter');
  oEnum           := IUnknown(objInvoker._NewEnum) as IEnumVariant;
  CurrIndex       := 0;
  while oEnum.Next(1, colItem, iValue) = 0 do
  begin
   if CurrIndex=FWmiCollectionIndex then
   begin
     ReturnValue:=colItem.Disable;
     Result     :=VarIntegerNull(ReturnValue);
     Exit;
   end;
   Inc(CurrIndex);
  end;
end;

end.