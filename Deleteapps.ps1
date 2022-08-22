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
