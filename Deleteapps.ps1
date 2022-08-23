<#

Script to remove Windows Bloat Applications 

For OnexPlayer Mini 5800U 
By: 
#> 




#(Debloat)

#Rid of Xbox, I personally keep the service, because I use XBOX game pass, but here if you want it. remove the "pundsign"
#Get-AppxPackage Microsoft.XboxIdentityProvider | Remove-AppxPackage
#Get-AppxPackage Microsoft.XboxGameOverlay | Remove-AppxPackage
#Get-AppxPackage Microsoft.XboxSpeechToTextOverlay | Remove-AppxPackage
#Get-AppxPackage Microsoft.YourPhone | Remove-AppxPackage
#Get-AppxPackage Microsoft.XboxGamingOverlay | Remove-AppxPackage
#Get-AppxPackage Microsoft.Xbox.TCUI | Remove-AppxPackage

#Completely Useless Applications
Get-AppxPackage Microsoft.Microsoft3DViewer | Remove-AppxPackage
Get-AppxPackage Microsoft.MixedReality.Portal | Remove-AppxPackage
Get-AppxPackage Microsoft.MicrosoftSolitaireCollection | Remove-AppxPackage
Get-AppxPackage Microsoft.Groove | Remove-AppxPackage

#Advertising, Gone
Get-AppxPackage Microsoft.BingWeather | Remove-AppxPackage
Get-AppxPackage microsoft.windowscommunicationsapps | Remove-AppxPackage
Get-AppxPackage Microsoft.Advertising.Xaml | Remove-AppxPackage

#Who uses Zune?
Get-AppxPackage Microsoft.ZuneMusic | Remove-AppxPackage
Get-AppxPackage Microsoft.ZuneVideo | Remove-AppxPackage

#Feedback is useless
Get-AppxPackage Microsoft.WindowsFeedbackHub | Remove-AppxPackage
Get-AppxPackage Microsoft.SkypeApp | Remove-AppxPackage
Get-AppxPackage Microsoft.Getstarted | Remove-AppxPackage
Get-AppxPackage Microsoft.MicrosoftOfficeHub | Remove-AppxPackage

#More Applications
#Cloud Experience
Get-AppxPackage -Name Microsoft.Windows.CloudExperienceHost -AllUsers | Remove-AppxPackage

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
Get-AppxPackage Microsoft.WindowsMaps | Remove-AppxPackage

#People
Get-AppxPackage Microsoft.People | Remove-AppxPackage

#Phone Link
Get-AppxPackage Microsoft.YourPhone -AllUsers | Remove-AppxPackage

#Quick Assist
Remove-WindowsCapability -Online -Name $(Get-WindowsCapability -Online -Name *quickassist*)

#Tips
Get-appxpackage Microsoft.Getstarted -AllUsers | Remove-AppxPackage

#Get Help
Get-AppxPackage -Name Microsoft.GetHelp -AllUsers | Remove-AppxPackage

#to-Do's
Get-AppxPackage -Name Microsoft.todos | Remove-AppxPackage

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
