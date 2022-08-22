<#

Script to stop unwanted services while playing games. 

For OnexPlayer Mini 5800U 
By: Alan Newingham
#> 



#Now let's look at unwanted services while we play games. 

#Print Spooler
Stop-Service -Name "spooler" -Force
Stop-Service -Name "PrintWorkflowUserSvc" -Force

#Fax service
Stop-Service -Name "Fax" -Force

#Downloaded Maps Manager
Stop-Service -Name "MapsBroker" -Force

#Windows 10 security Center
Stop-Service -Name "wscsvc" -Force

#Certificate Propogation service
Stop-Service -Name "CertPropSvc" -Force

#Geolocation 
lfsvc

#Program Compatability Service
PcaSvc

#Google Chrome
Stop-Service -Name "GoogleChromeElevationService" -Force
Stop-Service -Name "gupdate" -Force
Stop-Service -Name "gupdatem" -Force

#shadow Copies
Stop-Service -Name "swprv" -Force

#Broadcast DVR Server
Stop-Service -Name "BcastDVRUserService" -Force
#Windows 10 onesyncsvc

#Microsoft Store Install Service
Stop-Service -Name "InstallService" -Force
Stop-Service -Name "LicenseManager" -Force

#Update Health
Stop-Service -Name "uhssvc" -Force

#NFC
Stop-Service -Name "SEMgrSvc" -Force

#Phone Service
Stop-Service -Name "PhoneSvc" -Force
Stop-Service -Name "TapiSrv" -Force

#Shell hardware Extention
Stop-Service -Name "ShellHWDetection" -Force

#Sync Host
Stop-Service -Name "OneSyncSvc_17f793" -Force

#System Events Notification Service
Stop-Service -Name "SENS" -Force
Stop-Service -Name "SystemEventsBroker" -Force

#Updates
Stop-Service -Name "UsoSvc" -Force
Stop-Service -Name "wuauserv" -Force
Stop-Service -Name "WaaSMedicSvc" -Force

#WebClient
Stop-Service -Name "WebClient" -Force

#biometrics
Stop-Service -Name "WbioSrvc" -Force

#Defender
Stop-Service -Name "mpssvc" -Force

#Events
Stop-Service -Name "EventLog" -Force

#Fontcache
Stop-Service -Name "FontCache" -Force

#Windows Image Aquisition
Stop-Service -Name "stisvc" -Force

#Push Notification Services
Stop-Service -Name "WpnService" -Force
Stop-Service -Name "WpnUserService" -Force

#Windows Remote Management
Stop-Service -Name "WinRM" -Force

#Search
Stop-Service -Name "WSearch" -Force

#Security Service
Stop-Service -Name "SecurityHealthService" -Force

#Xbox
Stop-Service -Name "XboxGipSvc" -Force
Stop-Service -Name "XblAuthManager" -Force
Stop-Service -Name "XblGameSave" -Force
Stop-Service -Name "XboxNetApiSvc" -Force
