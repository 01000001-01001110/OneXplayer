
<#

Updating script to include all tweaks I enjoy having on the system.
Date: 8/26/2022
By: Alan Newingham

#>
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
    Write-Host "8: Press '8' Stop Services [To increase performance]"
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
             #Rid of Xbox!?!
             #Get-AppxPackage Microsoft.XboxIdentityProvider | Remove-AppxPackage
             #Get-AppxPackage Microsoft.XboxGameOverlay | Remove-AppxPackage
             #Get-AppxPackage Microsoft.XboxSpeechToTextOverlay | Remove-AppxPackage
             #Get-AppxPackage Microsoft.YourPhone | Remove-AppxPackage
             #Get-AppxPackage Microsoft.XboxGamingOverlay | Remove-AppxPackage
             #Get-AppxPackage Microsoft.Xbox.TCUI | Remove-AppxPackage
             #Go away forever!!
             Get-AppxPackage Microsoft.Microsoft3DViewer -AllUsers | Remove-AppxPackage
             Get-AppxPackage Microsoft.MixedReality.Portal -AllUsers | Remove-AppxPackage
             Get-AppxPackage Microsoft.MicrosoftSolitaireCollection -AllUsers | Remove-AppxPackage
             Get-AppxPackage Microsoft.Groove -AllUsers | Remove-AppxPackage
             #Advertising bleh...
             Get-AppxPackage Microsoft.BingWeather -AllUsers | Remove-AppxPackage
             Get-AppxPackage microsoft.windowscommunicationsapps -AllUsers | Remove-AppxPackage
             Get-AppxPackage Microsoft.Advertising.Xaml -AllUsers | Remove-AppxPackage
             #Who uses Zune??
             Get-AppxPackage Microsoft.ZuneMusic -AllUsers | Remove-AppxPackage
             Get-AppxPackage Microsoft.ZuneVideo -AllUsers | Remove-AppxPackage
             #Feedback is tracking!
             Get-AppxPackage Microsoft.WindowsFeedbackHub -AllUsers | Remove-AppxPackage
             Get-AppxPackage Microsoft.SkypeApp -AllUsers | Remove-AppxPackage
             Get-AppxPackage Microsoft.Getstarted -AllUsers | Remove-AppxPackage
             Get-AppxPackage Microsoft.MicrosoftOfficeHub -AllUsers | Remove-AppxPackage

             #Cloud Experience - Causes issues with Xbox Services when stopped
                #Get-AppxPackage -Name Microsoft.Windows.CloudExperienceHost -AllUsers | Remove-AppxPackage

                #bio Enrollment
                Get-AppxPackage -Name Microsoft.BioEnrollment -AllUsers | Remove-AppxPackage 

                #AAD Broker
                Get-AppxPackage -Name Microsoft.AAD.BrokerPlugin -AllUsers | Remove-AppxPackage 

                #CBSPreview
                Get-AppxPackage -Name Windows.CBSPreview -AllUsers | Remove-AppxPackage

                #Parental Controls
                #Get-AppxPackage -Name Microsoft.Windows.ParentalControls -AllUsers | Remove-AppxPackage

                #Print Dialogue
                #Get-AppxPackage -Name Windows.PrintDialog -AllUsers | Remove-AppxPackage

                #Onedrive
                Get-AppxPackage -Name Microsoft.OneDriveSync -AllUsers | Remove-AppxPackage

                #Teams
                Get-AppxPackage -Name MicrosoftTeams -AllUsers | Remove-AppxPackage

                #Sticky Notes
                Get-AppxPackage -Name Microsoft.MicrosoftStickyNotes -AllUsers | Remove-AppxPackage

                #Screen Sketch
                Get-AppxPackage -Name Microsoft.ScreenSketch -AllUsers | Remove-AppxPackage

                #Paint
                Get-AppxPackage -Name Microsoft.Paint -AllUsers | Remove-AppxPackage

                #Maps
                Get-AppxPackage Microsoft.WindowsMaps -AllUsers | Remove-AppxPackage

                #People
                Get-AppxPackage Microsoft.People -AllUsers | Remove-AppxPackage

                #Phone Link
                Get-AppxPackage Microsoft.YourPhone -AllUsers | Remove-AppxPackage

                #Quick Assist
                Remove-WindowsCapability -Online -Name $(Get-WindowsCapability -Online -Name *quickassist*)

                #Tips
                Get-appxpackage Microsoft.Getstarted -AllUsers | Remove-AppxPackage

                #Get Help
                Get-AppxPackage -Name Microsoft.GetHelp -AllUsers | Remove-AppxPackage

                #to-Do's
                Get-AppxPackage -Name Microsoft.todos -AllUsers | Remove-AppxPackage

                #Hulu
                Get-AppxPackage -Name HULULLC.HULUPLUS -AllUsers | Remove-AppxPackage

                #Netflix
                Get-AppxPackage -Name 4DF9E0F8.Netflix -AllUsers | Remove-AppxPackage

                #Spotify
                Get-AppxPackage -Name SpotifyAB.SpotifyMusic -AllUsers | Remove-AppxPackage

                #Weather
                Get-AppxPackage -Name Microsoft.BingWeather -AllUsers | Remove-AppxPackage

                #Messaging
                Get-AppxPackage -Name Microsoft.Messaging -AllUsers | Remove-AppxPackage

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
            Write-Host Installing Quick Assist 
            winget install "Quick Assist" --source msstore --accept-source-agreements --accept-package-agreements
        } '8' {
            Write-Host Installing Stopping Services to Free Resources
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
            #Stop-Service -Name "ShellHWDetection" -Force

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
            #Stop-Service -Name "WSearch" -Force

            #Security Service
            Stop-Service -Name "SecurityHealthService" -Force

            #Xbox
            #Stop-Service -Name "XboxGipSvc" -Force
            #Stop-Service -Name "XblAuthManager" -Force
            #Stop-Service -Name "XblGameSave" -Force
            #Stop-Service -Name "XboxNetApiSvc" -Force
        }
     }
     pause
 }
 until ($selection -eq 'q')
