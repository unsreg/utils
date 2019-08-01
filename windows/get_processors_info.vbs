'******************************************* ' Win32_Processor.vbs ' Processor information '****************************************************
Option Explicit
On Error Resume Next
Dim objService, colProcessors, objProcessor, ProcessorInfo
ProcessorInfo = "Processes info " & VbCrLf & VbCrLf
'connect to WMI namespace
Set objService = GetObject("WinMgmts:\\.\Root\CIMV2")
'Create Win32_Processor instances collection
Set colProcessors = objService.ExecQuery("SELECT * FROM Win32_Processor")
'enum collection
For Each objProcessor In colProcessors
	ProcessorInfo = ProcessorInfo & "Address Width: " & objProcessor.AddressWidth & VbCrLf
	ProcessorInfo = ProcessorInfo & "Architecture: " & objProcessor.Architecture & VbCrLf
	ProcessorInfo = ProcessorInfo & "Caption: " & objProcessor.Caption & VbCrLf
	ProcessorInfo = ProcessorInfo & "Cpu Status: " & objProcessor.CpuStatus & VbCrLf
	ProcessorInfo = ProcessorInfo & "Current Clock Speed: " & objProcessor.CurrentClockSpeed & VbCrLf
	ProcessorInfo = ProcessorInfo & "Current Voltage: " & objProcessor.CurrentVoltage & VbCrLf
	ProcessorInfo = ProcessorInfo & "Data Width: " & objProcessor.DataWidth & VbCrLf
	ProcessorInfo = ProcessorInfo & "Description: " & objProcessor.Description & VbCrLf
	ProcessorInfo = ProcessorInfo & "Device ID: " & objProcessor.DeviceID & VbCrLf
	ProcessorInfo = ProcessorInfo & "ExtClock: " & objProcessor.ExtClock & VbCrLf
	ProcessorInfo = ProcessorInfo & "Family: " & objProcessor.Family & VbCrLf
	ProcessorInfo = ProcessorInfo & "Install Date: " & objProcessor.InstallDate & VbCrLf
	ProcessorInfo = ProcessorInfo & "L2 Cache Size: " & objProcessor.L2CacheSize & VbCrLf
	ProcessorInfo = ProcessorInfo & "L2 Cache Speed: " & objProcessor.L2CacheSpeed & VbCrLf
	ProcessorInfo = ProcessorInfo & "Level: " & objProcessor.Level & VbCrLf
	ProcessorInfo = ProcessorInfo & "LoadPercentage: " & objProcessor.LoadPercentage & VbCrLf
	ProcessorInfo = ProcessorInfo & "Manufacturer: " & objProcessor.Manufacturer & VbCrLf
	ProcessorInfo = ProcessorInfo & "Maximum Clock Speed: " & objProcessor.MaxClockSpeed & VbCrLf
	ProcessorInfo = ProcessorInfo & "Name: " & objProcessor.Name & VbCrLf
	ProcessorInfo = ProcessorInfo & "Power Management Supported: " & objProcessor.PowerManagementSupported & VbCrLf
	ProcessorInfo = ProcessorInfo & "Processor Id: " & objProcessor.ProcessorId & VbCrLf
	ProcessorInfo = ProcessorInfo & "ProcessorType: " & objProcessor.ProcessorType & VbCrLf
	ProcessorInfo = ProcessorInfo & "Revision: " & objProcessor.Revision & VbCrLf
	ProcessorInfo = ProcessorInfo & "Role: " & objProcessor.Role & VbCrLf
	ProcessorInfo = ProcessorInfo & "Socket Designation: " & objProcessor.SocketDesignation & VbCrLf
	ProcessorInfo = ProcessorInfo & "Status: " & objProcessor.Status & VbCrLf
	ProcessorInfo = ProcessorInfo & "Statuslnfo: " & objProcessor.StatusInfo & VbCrLf
	ProcessorInfo = ProcessorInfo & "Stepping: " & objProcessor.Stepping & VbCrLf
	ProcessorInfo = ProcessorInfo & "UpgradeMethod: " & objProcessor.UpgradeMethod & VbCrLf
	ProcessorInfo = ProcessorInfo & "Version: " & objProcessor.Version & VbCrLf
	ProcessorInfo = ProcessorInfo & "VoltageCaps: " & objProcessor.VoltageCaps & VbCrLf
	ProcessorInfo = ProcessorInfo & "********************************" & VbCrLf & VbCrLf
	Next
	'show information
WScript.Echo ProcessorInfo