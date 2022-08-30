<#
Updating script to include all tweaks I enjoy having on the system.
Date: 8/26/2022
By: Alan Newingham
#>

Write-Host Creating a Restore Point
        Enable-ComputerRestore -Drive "C:\"
        Checkpoint-Computer -Description "iNetsRestorePoint" -RestorePointType "MODIFY_SETTINGS"
Write-Host "Backing Up Registry Data to C:\Registry Data"
	If (!(Test-Path "C:\Registry Backup\")) {
		New-Item -Path "C:\" -Name "Registry Backup" -ItemType "Directory"
	}
			reg export HKCR C:\Registry Backup\HKCR.Reg /y
			reg export HKCU C:\Registry Backup\HKCU.Reg /y
			reg export HKLM C:\Registry Backup\HKLM.Reg /y
			reg export HKU C:\Registry Backup\HKU.Reg /y
			reg export HKCC C:\Registry Backup\HKCC.Reg /y

function Show-Menu
{
    param (
        [string]$Title = 'iNets Game-Ready System Setup & Debloat Script'
    )
    Clear-Host
    Write-Host "================ $Title ================"
    
    Write-Host "1: Press '1' Nuke bloatware."
    Write-Host "2: Press '2' Install Chrome"
    Write-Host "3: Press '3' Install Firefox"
    Write-Host "4: Press '4' Windows 11 Dark Mode"
    Write-Host "5: Press '5' Windows 11 Light Mode"
    Write-Host "6: Press '6' Install Live Tiles Anywhere"
    Write-Host "7: Press '7' Install Quick Assist"
    Write-Host "8: Press '8' Stop Services"
    Write-Host "9: Press '9' Disable Lock Screen Floating Messages 
    Write-Host "Q: Press 'Q' to quit."
}

do
 {
     Show-Menu
     $selection = Read-Host "Please make a selection"
     switch ($selection)
     {
         '1' {

             Write-Host You chose to remove bloatware.
             Write-Host Will not remove things like Cortana, or Search.
             Pause
			 Get-AppxPackage "Microsoft.3DBuilder"  -AllUsers | Remove-AppxPackage
			 Get-AppxPackage "Microsoft.Microsoft3DViewer" -AllUsers | Remove-AppxPackage
			 Get-AppxPackage "Microsoft.AppConnector" -AllUsers | Remove-AppxPackage
			 Get-AppxPackage "Microsoft.BingFinance" -AllUsers | Remove-AppxPackage
			 Get-AppxPackage "Microsoft.BingWeather" -AllUsers | Remove-AppxPackage
			 Get-AppxPackage "Microsoft.BingNews" -AllUsers | Remove-AppxPackage
			 Get-AppxPackage "Microsoft.BingSports" -AllUsers | Remove-AppxPackage
			 Get-AppxPackage "Microsoft.BingTranslator" -AllUsers | Remove-AppxPackage
			 Get-AppxPackage "Microsoft.BingFoodAndDrink" -AllUsers | Remove-AppxPackage
			 Get-AppxPackage "Microsoft.BingHealthAndFitness" -AllUsers | Remove-AppxPackage
			 Get-AppxPackage "Microsoft.BingTravel" -AllUsers | Remove-AppxPackage
			 Get-AppxPackage "Microsoft.Getstarted" -AllUsers | Remove-AppxPackage
			 Get-AppxPackage "Microsoft.NetworkSpeedTest" -AllUsers | Remove-AppxPackage
			 Get-AppxPackage "Microsoft.News" -AllUsers | Remove-AppxPackage
			 Get-AppxPackage "Microsoft.Office.Lens" -AllUsers | Remove-AppxPackage
			 Get-AppxPackage "Microsoft.Office.Sway" -AllUsers | Remove-AppxPackage
			 Get-AppxPackage "Microsoft.Office.OneNote" -AllUsers | Remove-AppxPackage
			 Get-AppxPackage "Microsoft.OneConnect" -AllUsers | Remove-AppxPackage
			 Get-AppxPackage "Microsoft.Print3D" -AllUsers | Remove-AppxPackage
			 Get-AppxPackage "Microsoft.Wallet" -AllUsers | Remove-AppxPackage
			 Get-AppxPackage "Microsoft.Whiteboard" -AllUsers | Remove-AppxPackage
			 Get-AppxPackage "Microsoft.WindowsAlarms" -AllUsers | Remove-AppxPackage
			 Get-AppxPackage "Microsoft.WindowsMaps" -AllUsers | Remove-AppxPackage
			 Get-AppxPackage "Microsoft.WindowsPhone" -AllUsers | Remove-AppxPackage
			 Get-AppxPackage "Microsoft.WindowsSoundRecorder" -AllUsers | Remove-AppxPackage
			 Get-AppxPackage "Microsoft.CommsPhone" -AllUsers | Remove-AppxPackage
			 Get-AppxPackage "Microsoft.ScreenSketch" -AllUsers | Remove-AppxPackage
			 Get-AppxPackage "Microsoft.YourPhone" -AllUsers | Remove-AppxPackage
			 Get-AppxPackage "*EclipseManager*" -AllUsers | Remove-AppxPackage
			 Get-AppxPackage "*ActiproSoftwareLLC*" -AllUsers | Remove-AppxPackage
			 Get-AppxPackage "*AdobeSystemsIncorporated.AdobePhotoshopExpress*" -AllUsers | Remove-AppxPackage
			 Get-AppxPackage "*Duolingo-LearnLanguagesforFree*" -AllUsers | Remove-AppxPackage
			 Get-AppxPackage "*PandoraMediaInc*" -AllUsers | Remove-AppxPackage
			 Get-AppxPackage "*CandyCrush*" -AllUsers | Remove-AppxPackage
			 Get-AppxPackage "*BubbleWitch3Saga*" -AllUsers | Remove-AppxPackage
			 Get-AppxPackage "*Wunderlist*" -AllUsers | Remove-AppxPackage
			 Get-AppxPackage "*Sway*" -AllUsers | Remove-AppxPackage
			 Get-AppxPackage "*Speed Test*" -AllUsers | Remove-AppxPackage
			 Get-AppxPackage "*Viber*" -AllUsers | Remove-AppxPackage
			 Get-AppxPackage "*ACGMediaPlayer*" -AllUsers | Remove-AppxPackage
			 Get-AppxPackage "*OneCalendar*" -AllUsers | Remove-AppxPackage
			 Get-AppxPackage "*LinkedInforWindows*" -AllUsers | Remove-AppxPackage
			 Get-AppxPackage "*HiddenCityMysteryofShadows*" -AllUsers | Remove-AppxPackage
			 Get-AppxPackage "*HiddenCity*" -AllUsers | Remove-AppxPackage
			 Get-AppxPackage "*AdobePhotoshopExpress*" -AllUsers | Remove-AppxPackage
			 Get-AppxPackage "*HotspotShieldFreeVPN*" -AllUsers | Remove-AppxPackage
			 Get-AppxPackage "*Microsoft.MicrosoftStickyNotes*" -AllUsers | Remove-AppxPackage
             		 Get-AppxPackage "Microsoft.Microsoft3DViewer" -AllUsers | Remove-AppxPackage
             		 Get-AppxPackage "Microsoft.MixedReality.Portal" -AllUsers | Remove-AppxPackage
             		 Get-AppxPackage "Microsoft.MicrosoftSolitaireCollection" -AllUsers | Remove-AppxPackage
             		 Get-AppxPackage "Microsoft.Groove" -AllUsers | Remove-AppxPackage
             		 Get-AppxPackage "Microsoft.BingWeather" -AllUsers | Remove-AppxPackage
             		 Get-AppxPackage "microsoft.windowscommunicationsapps" -AllUsers | Remove-AppxPackage
             		 Get-AppxPackage "Microsoft.Advertising.Xaml" -AllUsers | Remove-AppxPackage
             		 Get-AppxPackage "Microsoft.ZuneMusic" -AllUsers | Remove-AppxPackage
             		 Get-AppxPackage "Microsoft.ZuneVideo" -AllUsers | Remove-AppxPackage
			 Get-AppxPackage "*Flipboard*" -AllUsers | Remove-AppxPackage
			 Get-AppxPackage "*Twitter*" -AllUsers | Remove-AppxPackage
			 Get-AppxPackage "*Facebook*" -AllUsers | Remove-AppxPackage
			 Get-AppxPackage "*Royal Revolt*" -AllUsers | Remove-AppxPackage
             		 Get-AppxPackage "Microsoft.WindowsFeedbackHub" -AllUsers | Remove-AppxPackage
             	 	 Get-AppxPackage "Microsoft.SkypeApp" -AllUsers | Remove-AppxPackage
             		 Get-AppxPackage "Microsoft.Getstarted" -AllUsers | Remove-AppxPackage
             		 Get-AppxPackage "Microsoft.MicrosoftOfficeHub" -AllUsers | Remove-AppxPackage
            		 Get-AppxPackage "Microsoft.WindowsMaps" -AllUsers | Remove-AppxPackage
             		 Get-AppxPackage "Microsoft.People" -AllUsers | Remove-AppxPackage
             		 Get-AppxPackage "Microsoft.YourPhone" -AllUsers | Remove-AppxPackage
             		 Get-appxpackage "Microsoft.Getstarted" -AllUsers | Remove-AppxPackage
             		 Get-AppxPackage "Windows.CBSPreview" -AllUsers | Remove-AppxPackage
             		 Get-AppxPackage "Microsoft.Windows.ParentalControls" -AllUsers | Remove-AppxPackage
             		 Get-AppxPackage "Microsoft.ScreenSketch" -AllUsers | Remove-AppxPackage
             		 Get-AppxPackage "Microsoft.GetHelp" -AllUsers | Remove-AppxPackage
             		 Get-AppxPackage "*Hulu*" -AllUsers | Remove-AppxPackage
             		 Get-AppxPackage "*Netflix*" -AllUsers | Remove-AppxPackage
			 Get-AppxPackage "*Spotify*" -AllUsers | Remove-AppxPackage
             		 Get-AppxPackage "Microsoft.Messaging" -AllUsers | Remove-AppxPackage
			 <#
			 Windows 10 telemetry data includes basic system diagnostics information, logs of how frequently you use features and applications, system files, and likely more metrics that have yet to be disclosed. Fortunately, Microsoft allows users to set the amount of data they wish to share, but it cannot be completely turned off. Enterprise installations have an even more minimal setting but even then a small amount of security and diagnostic information is sent.
			 #>
			 Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" -Name "AllowTelemetry" -Type DWord -Value 0
			 Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection" -Name "AllowTelemetry" -Type DWord -Value 0
			 Disable-ScheduledTask -TaskName "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" | Out-Null
			 Disable-ScheduledTask -TaskName "Microsoft\Windows\Application Experience\ProgramDataUpdater" | Out-Null
			 Disable-ScheduledTask -TaskName "Microsoft\Windows\Autochk\Proxy" | Out-Null
			 Disable-ScheduledTask -TaskName "Microsoft\Windows\Customer Experience Improvement Program\Consolidator" | Out-Null
			 Disable-ScheduledTask -TaskName "Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" | Out-Null
			 Disable-ScheduledTask -TaskName "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" | Out-Null
			 
			 #Showing known file extensions
			 Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "HideFileExt" -Type DWord -Value 0
                         #Modifying Windows System Visual Effects for Performace Gains
			 Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "DragFullWindows" -Type String -Value 0
			 Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "MenuShowDelay" -Type String -Value 200
			 Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "UserPreferencesMask" -Type Binary -Value ([byte[]](144,18,3,128,16,0,0,0))
			 Set-ItemProperty -Path "HKCU:\Control Panel\Desktop\WindowMetrics" -Name "MinAnimate" -Type String -Value 0
			 Set-ItemProperty -Path "HKCU:\Control Panel\Keyboard" -Name "KeyboardDelay" -Type DWord -Value 0
			 Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ListviewAlphaSelect" -Type DWord -Value 0
			 Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ListviewShadow" -Type DWord -Value 0
			 Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "TaskbarAnimations" -Type DWord -Value 0
			 Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" -Name "VisualFXSetting" -Type DWord -Value 3
			 Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\DWM" -Name "EnableAeroPeek" -Type DWord -Value 0
             
			 #Hide People Registry Key
			 If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People")) { New-Item -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People" | Out-Null }
			 Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People" -Name "PeopleBand" -Type DWord -Value 0
             
                         #Power Throttling
			 Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" -Name "PowerThrottlingOff" -Type DWord -Value 00000000
			 Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Power" -Name "HiberbootEnabled" -Type DWord -Value 0000001
			 
			 #Changing Explorer view to This PC
			 Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "LaunchTo" -Type DWord -Value 1
		         #Hiding 3D Objects icon from This PC
			 Remove-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}" -Recurse -ErrorAction SilentlyContinue  
             
			 #Feedback
			 New-Item -Path "HKCU:\SOFTWARE\Microsoft\Siuf\Rules" -Force | Out-Null
			 Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Siuf\Rules" -Name "NumberOfSIUFInPeriod" -Type DWord -Value 0
			 Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection" -Name "DoNotShowFeedbackNotifications" -Type DWord -Value 1
			 Disable-ScheduledTask -TaskName "Microsoft\Windows\Feedback\Siuf\DmClient" -ErrorAction SilentlyContinue | Out-Null
			 Disable-ScheduledTask -TaskName "Microsoft\Windows\Feedback\Siuf\DmClientOnScenarioDownload" -ErrorAction SilentlyContinue | Out-Null
			 
			 #Activity History
			 Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "EnableActivityFeed" -Type DWord -Value 0
			 Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "PublishUserActivities" -Type DWord -Value 0
			 Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "UploadUserActivities" -Type DWord -Value 0
			 Set-ItemProperty -Path "HKLM:\System\GameConfigStore" -Name "GameDVR_DXGIHonorFSEWindowsCompatible" -Type Hex -Value 00000000
			 Set-ItemProperty -Path "HKLM:\System\GameConfigStore" -Name "GameDVR_HonorUserFSEBehaviorMode" -Type Hex -Value 00000000
			 Set-ItemProperty -Path "HKLM:\System\GameConfigStore" -Name "GameDVR_EFSEFeatureFlags" -Type Hex -Value 00000000
			 Set-ItemProperty -Path "HKLM:\System\GameConfigStore" -Name "GameDVR_Enabled" -Type DWord -Value 00000000
			 
			 #Applications
			 Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "ContentDeliveryAllowed" -Type DWord -Value 0
			 Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "OemPreInstalledAppsEnabled" -Type DWord -Value 0
			 Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "PreInstalledAppsEnabled" -Type DWord -Value 0
			 Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "PreInstalledAppsEverEnabled" -Type DWord -Value 0
			 Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SilentInstalledAppsEnabled" -Type DWord -Value 0
			 Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-338387Enabled" -Type DWord -Value 0
			 Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-338388Enabled" -Type DWord -Value 0
			 Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-338389Enabled" -Type DWord -Value 0
			 Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-353698Enabled" -Type DWord -Value 0
			 Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SystemPaneSuggestionsEnabled" -Type DWord -Value 0
			 New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Force | Out-Null
			 
			 #Tailored Experiences
			 New-Item -Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Force | Out-Null
			 set-ItemProperty -Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Name "DisableTailoredExperiencesWithDiagnosticData" -Type DWord -Value 1
			 
			 #Advertising ID
			 New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" | Out-Null
			 Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" -Name "DisabledByGroupPolicy" -Type DWord -Value 1
			 
			 #Error reporting
			 Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\Windows Error Reporting" -Name "Disabled" -Type DWord -Value 1
			 Disable-ScheduledTask -TaskName "Microsoft\Windows\Windows Error Reporting\QueueReporting" | Out-Null
			 
			 #Windows Update peer to peer to only transmit locally
				New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" | Out-Null
			 Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" -Name "DODownloadMode" -Type DWord -Value 1
			 
			 #Diagnostics Tracking Service
			 Stop-Service "DiagTrack" -WarningAction SilentlyContinue
			 Start-Sleep 1
			 Set-Service "DiagTrack" -StartupType Disabled
			 
			 #WAP Push Service
			 Stop-Service "dmwappushservice" -WarningAction SilentlyContinue
			 Start-Sleep 1
			 Set-Service "dmwappushservice" -StartupType Disabled
			 
			 #Enabling F8 boot menu
			 bcdedit /set `{current`} bootmenupolicy Legacy | Out-Null
			 
			 #Disabling Superfetch service
			 Stop-Service "SysMain" -WarningAction SilentlyContinue
			 Start-Sleep 1
			 Set-Service "SysMain" -StartupType Disabled
			 
			 #Location Tracking"
			 #Test if reg key is there if it is rewrite
			 If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location")) {
			 	New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" -Force | Out-Null
			 }
			 Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" -Name "Value" -Type String -Value "Deny"
			 Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Sensor\Overrides\{BFA794E4-F964-4FDB-90F6-51056BFE4B44}" -Name "SensorPermissionState" -Type DWord -Value 0
			 Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\lfsvc\Service\Configuration" -Name "Status" -Type DWord -Value 0
			 
			 <#An autologger is a trace session that records events from user-mode and kernel-mode trace providers during the boot process. This feature lets you trace the actions of a trace provider while Windows is booting.
			 Removing AutoLogger file and restricting directory#>
			 $autoLoggerDir = "$env:PROGRAMDATA\Microsoft\Diagnosis\ETLLogs\AutoLogger"
			 If (Test-Path "$autoLoggerDir\AutoLogger-Diagtrack-Listener.etl") { Remove-Item "$autoLoggerDir\AutoLogger-Diagtrack-Listener.etl" }
			 icacls $autoLoggerDir /deny SYSTEM:`(OI`)`(CI`)F | Out-Null
			 
			 #Maps update
			 Set-ItemProperty -Path "HKLM:\SYSTEM\Maps" -Name "AutoUpdateEnabled" -Type DWord -Value 0 
			
			 #Storage Sense
        	         Remove-Item -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" -Recurse -ErrorAction SilentlyContinue 
			 
			 ## Performance Tweaks and More Telemetry
			 Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DriverSearching" -Name "SearchOrderConfig" -Type DWord -Value 00000000
			 Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" -Name "SystemResponsiveness" -Type DWord -Value 0000000a
			 Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" -Name "NetworkThrottlingIndex" -Type DWord -Value 0000000a
			 Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control" -Name "WaitToKillServiceTimeout" -Type DWord -Value 2000
			 Set-ItemProperty -Path "HKLM:\Control Panel\Desktop" -Name "MenuShowDelay" -Type DWord -Value 0
			 Set-ItemProperty -Path "HKLM:\Control Panel\Desktop" -Name "WaitToKillAppTimeout" -Type DWord -Value 5000
			 Set-ItemProperty -Path "HKLM:\Control Panel\Desktop" -Name "HungAppTimeout" -Type DWord -Value 4000
			 Set-ItemProperty -Path "HKLM:\Control Panel\Desktop" -Name "AutoEndTasks" -Type DWord -Value 1
			 Set-ItemProperty -Path "HKLM:\Control Panel\Desktop" -Name "LowLevelHooksTimeout" -Type DWord -Value 00001000
			 Set-ItemProperty -Path "HKLM:\Control Panel\Desktop" -Name "WaitToKillServiceTimeout" -Type DWord -Value 00002000
			 Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" -Name "ClearPageFileAtShutdown" -Type DWord -Value 00000000
			 Set-ItemProperty -Path "HKLM:\SYSTEM\ControlSet001\Services\Ndu" -Name "Start" -Type DWord -Value 00000004
			 Set-ItemProperty -Path "HKLM:\Control Panel\Mouse" -Name "MouseHoverTime" -Type DWord -Value 00000010
			 
			 # Network Tweaks
			 Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" -Name "IRPStackSize" -Type DWord -Value 20
			 
			 # Group svchost.exe processes
			 $ram = (Get-CimInstance -ClassName Win32_PhysicalMemory | Measure-Object -Property Capacity -Sum).Sum / 1kb
			 Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control" -Name "SvcHostSplitThresholdInKB" -Type DWord -Value $ram -Force
			 Write-Host "Disable News and Interests"
			 Set-ItemProperty -Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds" -Name "EnableFeeds" -Type DWord -Value 0
			 
			 # Remove "News and Interest" from taskbar
			 Set-ItemProperty -Path  "HKCU:\Software\Microsoft\Windows\CurrentVersion\Feeds" -Name "ShellFeedsTaskbarViewMode" -Type DWord -Value 2
			 
			 #Stopping and disabling Diagnostics Tracking Service..."
			 Stop-Service "DiagTrack"
			 Set-Service "DiagTrack" -StartupType Disabled
			 
			 # remove "Meet Now" button from taskbar
			 If (!(Test-Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer")) {
				New-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Force | Out-Null
			 }
		 
			 Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "HideSCAMeetNow" -Type DWord -Value 1

			 #Disable NumLock after startup
			 If (!(Test-Path "HKU:")) {
				New-PSDrive -Name HKU -PSProvider Registry -Root HKEY_USERS | Out-Null
			 }
			 Set-ItemProperty -Path "HKU:\.DEFAULT\Control Panel\Keyboard" -Name "InitialKeyboardIndicators" -Type DWord -Value 0

			 			 # Do not allow apps to use advertising ID to make ads more interresting to you based on your app usage 
			 if (-not (Test-Path -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo)) { New-Item -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo -Force }
			New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo -Name Enabled -PropertyType DWord -Value 0 -Force

			 # Hide the Windows welcome experiences after updates and occasionally when I sign in to highlight what's new and suggested
    		         New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager -Name SubscribedContent-310093Enabled -PropertyType DWord -Value 0 -Force

			 # Do not get tips, tricks, and suggestions as you use Windows
			 New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager -Name SubscribedContent-338389Enabled -PropertyType DWord -Value 0 -Force

			 # Turn off automatic installing suggested apps
			 New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager -Name SilentInstalledAppsEnabled -PropertyType DWord -Value 0 -Force

			 # Do not suggest ways I can finish setting up my device to get the most out of Windows
			 if (-not (Test-Path -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\UserProfileEngagement))
			 {
				New-Item -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\UserProfileEngagement -Force
			 }
			 New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\UserProfileEngagement -Name ScoobeSystemSettingEnabled -PropertyType DWord -Value 0 -Force

			 # Do not show sync provider notification within File Explorer
			 New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name ShowSyncProviderNotifications -PropertyType DWord -Value 0 -Force

			 # Show the file transfer dialog box in the detailed mode
			 if (-not (Test-Path -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager))
						{
							New-Item -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager -Force
						}
						New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager -Name EnthusiastMode -PropertyType DWord -Value 1 -Force

			 # Do not display the recycle bin files delete confirmation dialog (default value)
			 $ShellState[4] = 55
						New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer -Name ShellState -PropertyType Binary -Value $ShellState -Force

			 # Hide recently used files in Quick access
			 New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer -Name ShowRecent -PropertyType DWord -Value 0 -Force

			 # Hide frequently used folders in Quick access
			 New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer -Name ShowFrequent -PropertyType DWord -Value 0 -Force

			 # Show the search box on the taskbar (default value)
			 New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search -Name SearchboxTaskbarMode -PropertyType DWord -Value 2 -Force

			 # Hide search highlights
			 New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Feeds\DSB -Name ShowDynamicContent -PropertyType DWord -Value 1 -Force
			 New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\SearchSettings -Name IsDynamicSearchBoxEnabled -PropertyType DWord -Value 1 -Force

			 # Hide the Windows Ink Workspace button on the taskbar
			 New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer -Name EnableAutoTray -PropertyType DWord -Value 1 -Force

			 #Control Panel Behavior - I like old school
			 if (-not (Test-Path -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel))
			 {
				New-Item -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel -Force
			 }
			 New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel -Name AllItemsIconView -PropertyType DWord -Value 0 -Force
			 New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel -Name StartupPage -PropertyType DWord -Value 1 -Force			

			 #Disable First Logon Animation
			 New-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" -Name EnableFirstLogonAnimation -PropertyType DWord -Value 0 -Force

			 #Task Manager Open 
			 $Preferences[28] = 0
			New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\TaskManager -Name Preferences -PropertyType Binary -Value $Preferences -Force

			 #Show PC needs to restart notification
			 New-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings -Name RestartNotificationsAllowed2 -PropertyType DWord -Value 1 -Force

			 #Disable appdending "shortcut" to links created
			 if (-not (Test-Path -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\NamingTemplates))
			 {
				New-Item -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\NamingTemplates -Force
			 }
			 New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\NamingTemplates -Name ShortcutNameTemplate -PropertyType String -Value "%s.lnk" -Force

			 #Printscreen Open Snipping Tool
			 New-ItemProperty -Path "HKCU:\Control Panel\Keyboard" -Name PrintScreenKeyForSnippingEnabled -PropertyType DWord -Value 1 -Force


             Write-Host Completed with the removal of bloatware, press any key to continue.
             Pause

         } '2' {
            Write-Host Installing Chrome and Edge Redirector
            #Install Chrome
            $LocalTempDir = $env:TEMP; $ChromeInstaller = "ChromeInstaller.exe"; (new-object    System.Net.WebClient).DownloadFile('http://dl.google.com/chrome/install/375.126/chrome_installer.exe', "$LocalTempDir\$ChromeInstaller"); & "$LocalTempDir\$ChromeInstaller" /silent /install; $Process2Monitor =  "ChromeInstaller"; Do { $ProcessesFound = Get-Process | ?{$Process2Monitor -contains $_.Name} | Select-Object -ExpandProperty Name; If ($ProcessesFound) { "Still running: $($ProcessesFound -join ', ')" | Write-Host; Start-Sleep -Seconds 2 } else { rm "$LocalTempDir\$ChromeInstaller" -ErrorAction SilentlyContinue -Verbose } } Until (!$ProcessesFound)
            $LocalTempDir = $env:TEMP; $MSEdgeRedirect = "MSEdgeRedirect.exe"; (new-object    System.Net.WebClient).DownloadFile('https://github.com/rcmaehl/MSEdgeRedirect/releases/latest/download/MSEdgeRedirect.exe', "$LocalTempDir\$MSEdgeRedirect"); & "$LocalTempDir\$MSEdgeRedirect"; $Process2Monitor =  "MSEdgeRedirect"; Do { $ProcessesFound = Get-Process | ?{$Process2Monitor -contains $_.Name} | Select-Object -ExpandProperty Name; If ($ProcessesFound) { "Still running: $($ProcessesFound -join ', ')" | Write-Host; Start-Sleep -Seconds 2 } else { rm "$LocalTempDir\$MSEdgeRedirect" -ErrorAction SilentlyContinue -Verbose } } Until (!$ProcessesFound)
         } '3' {
            Write-Host Installing Firefox and Edge Redirector
            #Install Firefox
            $LocalTempDir = $env:TEMP; $Firefoxinstaller = "Firefoxinstaller.exe"; (new-object    System.Net.WebClient).DownloadFile('https://download.mozilla.org/?product=firefox-latest-ssl&os=win64&lang=en-US', "$LocalTempDir\$Firefoxinstaller"); & "$LocalTempDir\$Firefoxinstaller" /silent /install; $Process2Monitor =  "Firefoxinstaller"; Do { $ProcessesFound = Get-Process | ?{$Process2Monitor -contains $_.Name} | Select-Object -ExpandProperty Name; If ($ProcessesFound) { "Still running: $($ProcessesFound -join ', ')" | Write-Host; Start-Sleep -Seconds 2 } else { rm "$LocalTempDir\$Firefoxinstaller" -ErrorAction SilentlyContinue -Verbose } } Until (!$ProcessesFound)
            $LocalTempDir = $env:TEMP; $MSEdgeRedirect = "MSEdgeRedirect.exe"; (new-object    System.Net.WebClient).DownloadFile('https://github.com/rcmaehl/MSEdgeRedirect/releases/latest/download/MSEdgeRedirect.exe', "$LocalTempDir\$MSEdgeRedirect"); & "$LocalTempDir\$MSEdgeRedirect"; $Process2Monitor =  "MSEdgeRedirect"; Do { $ProcessesFound = Get-Process | ?{$Process2Monitor -contains $_.Name} | Select-Object -ExpandProperty Name; If ($ProcessesFound) { "Still running: $($ProcessesFound -join ', ')" | Write-Host; Start-Sleep -Seconds 2 } else { rm "$LocalTempDir\$MSEdgeRedirect" -ErrorAction SilentlyContinue -Verbose } } Until (!$ProcessesFound)
         } '4' {
            Write-Host Setting Windows Dark Mode 
            #Dark Mode
            Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name SystemUsesLightTheme -Value 0 -Type Dword -Force
        } '5' {
            Write-Host Setting Windows Light Mode 
            #Light Mode
            Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name SystemUsesLightTheme -Value 1 -Type Dword -Force
        } '6' {
            Write-Host Installing Live Tiles Anywhere 
            winget install "Live Tiles Anywhere" --source msstore --accept-source-agreements --accept-package-agreements
        } '7' {
            Write-Host Making sure the old version is removed before installing the new version.

            #Quick Assist
            Remove-WindowsCapability -Online -Name $(Get-WindowsCapability -Online -Name *quickassist*)

            Write-Host Installing Quick Assist 
            winget install "Quick Assist" --source msstore --accept-source-agreements --accept-package-agreements
        } '8' {
            Write-Host Installing Stopping Services to Free Resources
            #Fax service
            Stop-Service -Name "Fax" -Force
            #Downloaded Maps Manager
            Stop-Service -Name "MapsBroker" -Force
            #Geolocation 
            lfsvc
            #Broadcast DVR Server
            Stop-Service -Name "BcastDVRUserService" -Force
            #NFC
            Stop-Service -Name "SEMgrSvc" -Force
            #Phone Service
            Stop-Service -Name "PhoneSvc" -Force
            Stop-Service -Name "TapiSrv" -Force
            #Xbox
            Stop-Service -Name "XboxGipSvc" -Force
            Stop-Service -Name "XblAuthManager" -Force
            Stop-Service -Name "XblGameSave" -Force
            Stop-Service -Name "XboxNetApiSvc" -Force
        } '9' {
            Write-Host Disabling Lock Screen Notifications
			Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name ShowSyncProviderNotification -Value 0 -Type Dword -Force
		}
     }
     pause
 }
 until ($selection -eq 'q')
