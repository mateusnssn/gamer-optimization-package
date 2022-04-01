
param([switch]$Elevated)
function Test-Admin {
  $currentUser = New-Object Security.Principal.WindowsPrincipal $([Security.Principal.WindowsIdentity]::GetCurrent())
  $currentUser.IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)
}if ((Test-Admin) -eq $false)  {
    if ($elevated){ } 
    else{
        Start-Process powershell.exe -Verb RunAs -ArgumentList ('-noprofile -noexit -file "{0}" -elevated' -f ($myinvocation.MyCommand.Definition))
    }exit
}

'running with full privileges'


set-service AppVClient -StartupType 'Disabled'
set-service autotimesvc -StartupType 'Disabled'
set-service diagnosticshub.standardcollector.service -StartupType 'Disabled'
set-service DiagTrack -StartupType 'Disabled'
set-service DialogBlockingService -StartupType 'Disabled'
set-service fhsvc -StartupType 'Disabled'
set-service icssvc -StartupType 'Disabled'
set-service MapsBroker -StartupType 'Disabled'
set-service MsKeyboardFilter -StartupType 'Disabled'
set-service NcbService -StartupType 'Disabled'
set-service NetTcpPortSharing -StartupType 'Disabled'
set-service perceptionsimulation -StartupType 'Disabled'
set-service PerfHost -StartupType 'Disabled'
set-service PhoneSvc -StartupType 'Disabled'
set-service RemoteAccess -StartupType 'Disabled'
set-service RemoteRegistry -StartupType 'Disabled'
set-service RetailDemo -StartupType 'Disabled'
set-service RmSvc -StartupType 'Disabled'
set-service SCardSvr -StartupType 'Disabled'
set-service SCPolicySvc -StartupType 'Disabled'
set-service SEMgrSvc -StartupType 'Disabled'
set-service SessionEnv -StartupType 'Disabled'
set-service ShellHWDetection -StartupType 'Disabled'
set-service shpamsvc -StartupType 'Disabled'
set-service ssh-agent -StartupType 'Disabled'
set-service SstpSvc -StartupType 'Disabled'
set-service TapiSrv -StartupType 'Disabled'
set-service tzautoupdate -StartupType 'Disabled'
set-service UevAgentService -StartupType 'Disabled'
set-service uhssvc -StartupType 'Disabled'
set-service WbioSrvc -StartupType 'Disabled'
set-service WerSvc -StartupType 'Disabled'
set-service WFDSConMgrSvc -StartupType 'Disabled'
set-service WinRM -StartupType 'Disabled'
set-service wisvc -StartupType 'Disabled'
set-service wmiApSrv -StartupType 'Disabled'
set-service WpcMonSvc -StartupType 'Disabled'
set-service WSearch -StartupType 'Disabled'
set-service XblAuthManager -StartupType 'Disabled'
set-service XblGameSave -StartupType 'Disabled'
set-service XboxGipSvc -StartupType 'Disabled'


echo ""
echo "Done."
echo "Please restart your computer =))"
echo ""

